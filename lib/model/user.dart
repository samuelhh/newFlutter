import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  // @JsonKey(name: 'data')
  int code;
  String msg;
  Map data;

  User(this.code, this.msg, this.data);

  factory User.fromJson(Map<String, dynamic> srcJson) =>
      _$UserFromJson(srcJson);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
