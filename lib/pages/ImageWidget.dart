import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  //http://n.sinaimg.cn/ent/4_img/upload/89fcfcd9/28/w690h938/20200827/c26e-iyhvyva4866898.jpg
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Image"),
        ),
        body: Container(
          color: Colors.grey[200],
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://n.sinaimg.cn/ent/575/w880h495/20200903/01f5-iypetiv8816615.jpg",
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  )
                ],
              ),
              _thisTitle("网络占位图片CachedNetworkImage"),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.network(
                        'https://n.sinaimg.cn/edu/transform/590/w240h350/20190716/8e9a-hzxsvnn2921870.jpg',
                      ),
                    ),
                    Expanded(
                      child: Image.network(
                        'https://n.sinaimg.cn/edu/transform/590/w240h350/20190718/a1f0-hzxsvnp4360029.jpg',
                      ),
                    ),
                    Expanded(
                        child: CachedNetworkImage(
                      imageUrl:
                          "https://n.sinaimg.cn/news/transform/590/w240h350/20190717/81d0-hzxsvnn6410678.jpg",
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ))
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget _thisTitle(String title) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Text(
        title,
        style: TextStyle(
          // fontWeight: FontWeight.bold,
          fontSize: 14.0,
        ),
      ),
    );
  }
}
