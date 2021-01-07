import 'package:flutter/material.dart';
import 'package:new_flutter/navigator/NavTabs.dart';
// import './pages/MainPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hanh',
      theme: ThemeData(
        brightness: Brightness.light,
        // primaryColor: Colors.blue,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: NavTabs(),
      debugShowCheckedModeBanner: false, //开发模式，去掉右上角有个debug标志
    );
  }
}
