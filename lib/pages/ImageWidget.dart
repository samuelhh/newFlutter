import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: Center(
        child: Image.network(
          "http://n.sinaimg.cn/ent/4_img/upload/89fcfcd9/28/w690h938/20200827/c26e-iyhvyva4866898.jpg",
        ),
      ),
    );
  }
}
