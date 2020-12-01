import 'package:flutter/material.dart';
import 'package:flutter_color_plugin/flutter_color_plugin.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
      ),
      body: Center(child: MyText()),
    );
  }
}

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'hello',
          style: TextStyle(
              color: Colors.blue,
              fontSize: 30.0,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.red),
        ),
        Text(
          'flutter_color_plugin使用方法',//https://pub.dev/packages/flutter_color_plugin
          style: TextStyle(
            color: ColorUtil.color('#ff0000'),
          ),
        ),
        Text(
          'hello2',
          style: TextStyle(
              fontSize: 30.0,
              decoration: TextDecoration.underline,
              decorationColor: Colors.red),
        ),
        Text(
          '上划线',
          style: TextStyle(
              color: Colors.orange,
              fontSize: 30.0,
              decoration: TextDecoration.overline,
              decorationStyle: TextDecorationStyle.dotted,
              decorationColor: Colors.blue),
        ),
        RichText(
            text: TextSpan(
                // text: "RichText",
                // style: TextStyle(color: Colors.red, fontSize: 22.0),
                children: <TextSpan>[
              TextSpan(
                  text: "I",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35.0,
                  )),
              TextSpan(
                  text: 'want',
                  style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.blueGrey,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.red)),
              TextSpan(
                  text: 'learn',
                  style: TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.bold))
            ])),
        Text(
          "word spacing data",
          style: TextStyle(wordSpacing: 10.0),
        ),
        Text(
          "字母间隙 hello",
          style: TextStyle(
              letterSpacing: 10.0, fontSize: 30.0, color: Colors.pink),
        ),
        Card(
          child: Container(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Padding本身还是挺简单的"),
            ),
          ),
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child:
              Text("显示数据列表是移动应用程序常见的需求。Flutter包含的ListView Widget，使列表变得轻而易举！"),
        ),
        Stack(
          children: <Widget>[
            Container(
              width: 150,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 90,
              height: 90,
              color: Colors.green,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.blue,
              child: Text("data"),
            ),
          ],
        ),
        Text(
          "该新闻稿援引美国商务部长罗斯的话说：“美国、中国的邻国以及国际社会指责中国对南海的主权主张，以及为中国军方修建‘人工岛’。今天被指定的这些实体在‘人工岛’建设中发挥了重要作用，必须被追究责任。”",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 16.0,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.double,
          ),
          textAlign: TextAlign.left,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
