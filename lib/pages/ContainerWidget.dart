import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Container"),
        ),
        body: ListView(
          children: [
            Container(
              child: Text(
                "data 内外边距",
                style: TextStyle(color: Colors.white),
              ),
              // color: Colors.greenAccent,
              width: 200.0,
              height: 300.0,
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
            ),
            Text("SliverAppBar 可以实现背景，标题，顶部导航栏联动，渐隐渐出动画"),
            Container(
              width: 100.0,
              height: 600.0,
              color: Colors.greenAccent,
              child: Text("data"),
              margin: EdgeInsets.all(20.0),
            ),
            Text(
                "做一个ssr项目， 我刚开始， 竟然使用generate命令， 结果导致文件放上去后， 刷新页面出现了404未找到页面错误。后面才发觉， 原来服务端渲染， 是要在服务端运行Nuxt框架的Node, 这是它框架的服务端渲染， 而generate是静态文件。")
          ],
        ));
  }
}
