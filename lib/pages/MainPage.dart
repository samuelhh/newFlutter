import 'package:flutter/material.dart';
import 'package:new_flutter/pages/CustomScrollViewWidget.dart';
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
        title: Text("TextWidget"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => new TextWidget()));
        },
      )
    ]).toList());
  }
}
