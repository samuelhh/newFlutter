import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:new_flutter/http/NetUtil.dart';
import '../http/DioUtil.dart';
import '../config/ApiConfig.dart';
import '../model/user.dart';

class PersonPage extends StatefulWidget {
  @override
  _PersonPageState createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  var items = [];
  String dataStr = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("个人中心")),
      body: Container(
        // child: _myListView(context, items),
        // child: Text(dataStr),
        child: buildGrid(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _getUserInfo();
  }

  // 方法
  _getUserInfo() async {
    // 调用方法
    DioUtil.getInstance().get(
      TestApi.test3,
      success: (data) {
        // 成功返回结果
        // User user = User.fromJson(data);
        setState(() {
          // items = data.data["list"];
        });
        print(data is String);
      },
      error: (error) {
        // 失败返回结果
        print('失败' + error);
      },
    );
  }
//获取网络数据
  void getContent() {
    NetUtil.get("http://www.mocky.io/v2/5b7143ae3200001402f36c46", (data) {
      User user = User.fromJson(data);
      setState(() {
        items = user.data;
      });
    }, errorCallBack: (errorMsg) {
      print("error:" + errorMsg);
    });
  }
  _myListView(context, items) {
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        title: Text("${items.userName}"),
      ),

      // {

      //   return ListTile(
      //     title: Text("${items[index]}"),
      //     // leading: Icon(Icons.list),
      //     trailing: Icon(Icons.keyboard_arrow_right),
      //   );
      // },
      itemCount: items.length,
    );
  }

  Widget buildGrid() {
    List<Widget> tiles = []; //先建一个数组用于存放循环生成的widget
    for (var item in items) {
      tiles.add(new Column(children: <Widget>[Text(item['userName'])]));
    }
    return Column(children: tiles);
  }
}
