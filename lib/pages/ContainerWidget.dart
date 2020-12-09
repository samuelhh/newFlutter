import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Container"),
        ),
        body: Container(
          // color: Colors.grey[200],
          child: ListView(
            children: [
              Container(
                child: Text(
                  "data 内外边距",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),

                // width: 200.0,
                height: 200.0,
                alignment: Alignment.bottomRight,
                // margin: EdgeInsets.all(30.0),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  // 默认是从左往右的渐变
                  gradient: LinearGradient(
                      // stops: [0.2, 1],
                      colors: [
                        Colors.greenAccent,
                        Colors.blueAccent
                      ], // 渐变的色值数组
                      begin: Alignment.topCenter), //线性渐变的方向
                ),
              ),
              Text("SliverAppBar 可以实现背景，标题，顶部导航栏联动，渐隐渐出动画"),
              Container(
                color: Colors.lightGreen,
                child: Text("data"),
                padding: EdgeInsets.all(20.0),
              ),
              Container(
                child: Text(
                    "做一个ssr项目， 我刚开始， 竟然使用generate命令， 结果导致文件放上去后， 刷新页面出现了404未找到页面错误。后面才发觉， 原来服务端渲染， 是要在服务端运行Nuxt框架的Node, 这是它框架的服务端渲染， 而generate是静态文件。"),
                margin: EdgeInsets.all(60.0),
              ),
              Text(
                "快递人员称冯女士的快件未贴生鲜面单所以才被投放到投丰巢之中。云集 App 方面则是回应称冯女士所购商品并没有变质，若其坚持投诉则需要提供全部商品图片信息。同时云集方面也以申请退货提供图片不全为由关闭了售后申请。冯女士则回应称因商品被放进冰箱，无法提供照片还原取件时的状况。",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w100,
                ),
              )
            ],
          ),
        ));
  }
}
