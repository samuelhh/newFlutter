import 'package:flutter/material.dart';
import './StaticCard.dart';
import './ContainerWidget.dart';
import './CustomScrollViewWidget.dart';
import './GridViewWidget.dart';
import './ImageWidget.dart';
import './TextWidget.dart';
import './DefaultApp.dart';
import './FlutterSwiper.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Flutter'),
      ),
      body: Container(
        child: MyListView(),
      ),
    );
  }
}

//MyListView
class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: ListTile.divideTiles(context: context, tiles: [
      ListTile(
        title: Text("Default"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => DefaultApp())),
      ),
      ListTile(
        title: Text("FlutterSwiper"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => FlutterSwiper())),
      ),
      ListTile(
        title: Text("CustomScrollView"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => new CustomScrollViewWidget()));
        },
      ),
      ListTile(
        title: Text("Text"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => new TextWidget()));
        },
      ),
      ListTile(
        title: Text("Container"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => new ContainerWidget())),
      ),
      ListTile(
        title: Text("Image"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => new ImageWidget()));
        },
      ),
      ListTile(
        title: Text("GridView"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => new GridViewWidget())),
      ),
      ListTile(
        title: Text("StaticCard"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => StaticCard())),
      ),
    ]).toList());
  }
}