import 'package:flutter/material.dart';
import './pages/MainPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'hanh',
      home: MainPage(),
    );
  }
}
