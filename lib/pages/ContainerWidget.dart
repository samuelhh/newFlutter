import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("containerWidget"),
        ),
        body: Container(
          child: Text("data"),
          color: Colors.greenAccent,
          width: 200.0,
          height: 300.0,
          alignment: Alignment.bottomRight,
          margin: EdgeInsets.all(30.0),
        ));
  }
}
