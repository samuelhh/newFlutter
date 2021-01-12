import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

const APPBAR_SCROLL_OFFSET = 100;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _ImagesUrls = [
    'https://dimg04.c-ctrip.com/images/0zg1i120008d6krwgB46A.jpg',
    'https://dimg04.c-ctrip.com/images/0zg1g120008cuy4tqF42A.jpg'
  ];
  double appBarAlpha = 0;
  _onScroll(offset) {
    double alpha = offset / APPBAR_SCROLL_OFFSET;
    if (alpha < 0) {
      alpha = 0;
    } else if (alpha > 1) {
      alpha = 1;
    }
    setState(() {
      appBarAlpha = alpha;
    });
    print(alpha);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: NotificationListener(
            // ignore: missing_return
            onNotification: (scrollNotification) {
              if (scrollNotification is ScrollUpdateNotification &&
                  scrollNotification.depth == 0) {
                //滚动且是列表滚动的时候
                _onScroll(scrollNotification.metrics.pixels);
              }
            },
            child: ListView(
              children: [
                Container(
                  height: 160,
                  child: Swiper(
                    itemCount: _ImagesUrls.length,
                    autoplay: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network(
                        _ImagesUrls[index],
                        fit: BoxFit.fill,
                      );
                    },
                    pagination: SwiperPagination(),
                  ),
                ),
                Container(
                  height: 1200,
                  child: ListTile(
                    title: Text("sadfasd"),
                  ),
                )
              ],
            ),
          ),
        ),
        Opacity(
          opacity: appBarAlpha,
          child: Container(
            height: 60,
            decoration: BoxDecoration(color: Colors.white),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text('首页'),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
