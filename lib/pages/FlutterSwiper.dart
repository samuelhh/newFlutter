import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class FlutterSwiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutterSwiper"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: 120.0,
        child: _bannerSwiper(),
      ),
    );
  }
}

Widget _bannerSwiper() {
  final List swiperDataList = [
    "https://img3.mukewang.com/5f8a54b609e58f7618000600.png",
    "https://img4.mukewang.com/5f8ed45f094451c718000600.png",
    "https://img4.mukewang.com/5f7fc671090bb7fe18000600.png"
  ];
  return Swiper(
    itemBuilder: (BuildContext context, int index) {
      return Image.network("${swiperDataList[index]}");
    },
    itemCount: 3,
    pagination: SwiperPagination(
        // builder: DotSwiperPaginationBuilder(
        //   color: Colors.grey,
        //   activeColor: Colors.blue,
        // ),
        ),
    viewportFraction: 0.9,
    scale: 0.9,
    autoplay: true,

    // itemWidth: 300.0,
    // itemHeight: 100.0,
    // layout: SwiperLayout.CUSTOM,
    // customLayoutOption: new CustomLayoutOption(
    //         startIndex: -1,

    //         /// 开始下标
    //         stateCount: 3

    //         /// 下面的数组长度
    //         )
    //     .addRotate([
    //   //  每个元素的角度
    //   -45.0 / 180,
    //   0.0,
    //   45.0 / 180
    // ]).addTranslate([
    //   /// 每个元素的偏移
    //   new Offset(-370.0, -40.0),
    //   new Offset(0.0, 0.0),
    //   new Offset(370.0, -40.0)
    // ]),
  );
}
