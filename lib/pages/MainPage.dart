import 'package:flutter/material.dart';
import 'package:new_flutter/pages/ContainerWidget.dart';
import 'package:new_flutter/pages/CustomScrollViewWidget.dart';
import 'package:new_flutter/pages/ImageWidget.dart';
import 'package:new_flutter/pages/TextWidget.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter'),
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
        title: Text("image"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => new ImageWidget()));
        },
      )
    ]).toList());
  }
}
