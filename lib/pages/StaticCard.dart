import 'package:flutter/material.dart';

class StaticCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("staticCard"),
      ),
      body: _myCard(context),
    );
  }
}

Widget _myCard(context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 325.00,
    margin: EdgeInsets.all(10.0),
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image(
            image: new NetworkImage(
                'https://img.alicdn.com/tfs/TB1nWPbqi_1gK0jSZFqXXcpaXXa-1404-788.png'),
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: 200.00,
          ),
          Container(
              child: Text('碎花青春元素悄然走红',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromARGB(255, 51, 51, 51), fontSize: 16.00)),
              width: 160.00,
              height: 22.00,
              margin: const EdgeInsets.fromLTRB(12.00, 10.00, 0, 0)),
          Container(
              child: Text('碎花元素可以张扬自我的独特思想品格、风格和生活态度，整体给人感觉一种青春叛逆不羁的自由风格。',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromARGB(255, 136, 136, 136),
                      fontSize: 13.00)),
              width: 338.00,
              height: 40.00,
              margin: const EdgeInsets.fromLTRB(12.00, 8.00, 0, 0)),
          Container(
              // width: 351.00,
              margin: const EdgeInsets.fromLTRB(0, 12.00, 0, 0),
              padding: const EdgeInsets.fromLTRB(12.00, 0, 11.50, 0),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        height: 22.00,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Stack(children: <Widget>[
                                Positioned(
                                    child: Image(
                                        image: new NetworkImage(
                                            'https://img.alicdn.com/tfs/TB1VtxbpUT1gK0jSZFhXXaAtVXa-72-72.png'),
                                        fit: BoxFit.fill,
                                        width: 18.00,
                                        height: 18.00),
                                    top: 0.00,
                                    left: 0.00,
                                    width: 18.00,
                                    height: 18.00),
                                Container(
                                    child: Stack(children: <Widget>[
                                      Container(
                                          child: Image(
                                              image: new NetworkImage(
                                                  'https://img.alicdn.com/tfs/TB1sgpfpG61gK0jSZFlXXXDKFXa-28-28.png'),
                                              fit: BoxFit.fill,
                                              width: 7.00,
                                              height: 7.00),
                                          width: 7.00,
                                          height: 7.00,
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 11.00, 0, 0))
                                    ]),
                                    width: 18.00,
                                    height: 18.00)
                              ]),
                              Container(
                                  child: Text('美衣时尚',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 102, 102, 102),
                                          fontSize: 12.00)),
                                  width: 48.00,
                                  height: 18.00,
                                  margin:
                                      const EdgeInsets.fromLTRB(3.00, 0, 0, 0)),
                              Container(
                                  child: Container(
                                      child: Text('时尚媒体',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 44, 84),
                                              fontSize: 10.00)),
                                      width: 40.00,
                                      height: 16.00,
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 1.00, 0, 0)),
                                  height: 18.00,
                                  margin:
                                      const EdgeInsets.fromLTRB(3.00, 0, 0, 0),
                                  padding: const EdgeInsets.fromLTRB(
                                      4.00, 0, 4.50, 0),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 253, 234, 238),
                                      borderRadius:
                                          BorderRadius.circular(3.00)))
                            ])),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              child: Image(
                                  image: new NetworkImage(
                                      'https://img.alicdn.com/tfs/TB15MlfpG61gK0jSZFlXXXDKFXa-52-40.png'),
                                  fit: BoxFit.fill,
                                  width: 13.00,
                                  height: 10.00),
                              width: 13.00,
                              height: 10.00,
                              margin: const EdgeInsets.fromLTRB(0, 5.50, 0, 0)),
                          Container(
                              child: Text('2980',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 153, 153, 153),
                                      fontSize: 10.00)),
                              width: 24.00,
                              height: 12.00,
                              margin:
                                  const EdgeInsets.fromLTRB(3.00, 4.50, 0, 0))
                        ])
                  ]))
        ]),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.circular(12.00),
    ),
  );
}
