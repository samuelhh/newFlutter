import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextWidget"),
      ),
      body: Center(
        child: MyText(),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "hello",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 35.0,
          ),
        )
      ],
    );
  }
}
