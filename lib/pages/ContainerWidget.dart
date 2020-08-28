import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("containerWidget"),
        ),
        body: Container(
          child: Text(
            "data 内外边距",
            style: TextStyle(color: Colors.white),
          ),
          // color: Colors.greenAccent,
          width: 200.0,
          height: 600.0,
          alignment: Alignment.bottomRight,
          margin: EdgeInsets.all(30.0),
          padding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 10.0),
          decoration: BoxDecoration(
            // 默认是从左往右的渐变
            gradient: LinearGradient(
                // stops: [0.2, 1],
                colors: [Colors.greenAccent, Colors.blueAccent], // 渐变的色值数组
                begin: Alignment.topCenter), //线性渐变的方向
          ),
        ));
  }
}
