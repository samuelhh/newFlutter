import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchUrl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("launchUrl"),
        ),
        body: Center(
          child: Column(
            children: [
              RaisedButton(
                child: Text("打开浏览器"),
                onPressed: _launchURL,
              ),
              RaisedButton(
                child: Text("打开APP"),
                onPressed: _openMap,
              ),
            ],
          ),
        ));
  }

  _launchURL() async {
    const url = 'https://m.imooc.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _openMap() async {
    //android
    const url = 'weixin://'; //app开发者提供的 schema ,谷歌地图geo:52.32.7.917
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      //ios
      const url = 'http:maps.apple.com/?ll=52.32.4.917';//http:maps.apple.com/?ll=52.32.4.917
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }
}
