import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomScrollViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('My Flutter'),
        // ),
        body: Center(
            child: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 230.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('复仇者联盟'),
            background: Image.network(
              'http://img.haote.com/upload/20180918/2018091815372344164.jpg',
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        SliverGrid.count(
          crossAxisCount: 4,
          children: List.generate(8, (index) {
            return Container(
              color: Colors.primaries[index % Colors.primaries.length],
              alignment: Alignment.center,
              child: Text(
                '$index',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            );
          }).toList(),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((content, index) {
            return Container(
              height: 85,
              alignment: Alignment.center,
              color: Colors.primaries[index % Colors.primaries.length],
              child: Text(
                '$index',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            );
          }, childCount: 25),
        )
      ],
    )));
  }
}
