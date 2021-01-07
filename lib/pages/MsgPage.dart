import 'package:flutter/material.dart';

class MsgPage extends StatefulWidget {
  @override
  _MsgPageState createState() => _MsgPageState();
}

class _MsgPageState extends State<MsgPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("消息中心"),
      ),
      body: Container(
        child: Text("消息消息消息"),
      ),
    );
  }
}
