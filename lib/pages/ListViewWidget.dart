import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  final List<String> items =
      List<String>.generate(1000, (index) => "Item $index");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("listView"),
      ),
      body: _myListView(context, items),
    );
  }
}

_myListView(context, items) {
  return ListView.builder(
    itemBuilder: (context, index) => ListTile(
      title: Text("${items[index]}"),
    ),

    // {

    //   return ListTile(
    //     title: Text("${items[index]}"),
    //     // leading: Icon(Icons.list),
    //     trailing: Icon(Icons.keyboard_arrow_right),
    //   );
    // },
    itemCount: items.length,
  );
}
