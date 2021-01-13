import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Object {
  @JsonKey(name: 'data')
  String data;

  User(
    this.data,
  );
  factory User.fromJson(Map<String, dynamic> srcJson) =>
      _$UserFromJson(srcJson);
}
