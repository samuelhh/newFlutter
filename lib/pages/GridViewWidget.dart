import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: _myGridView(),
    );
  }

  Widget _myGridView() {
    final String _url = "images/none.png";
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2.0,
        childAspectRatio: 0.75,
        mainAxisSpacing: 2.0,
      ),
      children: [
        _myFadeInImage(
            'https://p0.meituan.net/movie/8d157177b89861caa42905c192ed05711630386.jpg'),
        _myFadeInImage(
            'https://p1.meituan.net/movie/7a67c9d08a9bfb034cbb1a531287aa4a194860.jpg'),
        _myFadeInImage(
            'https://p1.meituan.net/movie/8f9a05ab6e883492bc8f3b3d81574e90488241.jpg'),
        _myFadeInImage(
            'https://p0.meituan.net/movie/1a8fb14251e4e8b0578eeed69704b9584993617.jpg'),
        _myFadeInImage(
            'https://p1.meituan.net/movie/1818ce14669a901792c052caf048475a640420.jpg'),
        _myFadeInImage(
            'https://p0.meituan.net/moviemachine/40d1e5ac176f1e9258da10a3222dbff7952117.png'),
        _myFadeInImage(
            'https://p1.meituan.net/movie/648bbced128324a4b4ccf7db6c564a251744344.jpg'),
        _myFadeInImage(
            'https://p0.meituan.net/movie/005955214d5b3e50c910d7a511b0cb571445301.jpg'),
        _myFadeInImage(
            'https://p0.meituan.net/movie/1e34d48ffb219f16d090eac08358787c713102.jpg'),
        _myFadeInImage(
            'https://p0.meituan.net/movie/3b9c56456e69a00ea1fe9d4e836854e417747502.jpg'),
        _myFadeInImage(
            'https://p1.meituan.net/movie/0b83e5c9a01ec1757f6373f1fd6769713641134.jpg'),
        _myFadeInImage(
            'https://p0.meituan.net/moviemachine/761e77cdf9c1bd87f9dffe68a3e9c3bb591587.png'),
        _myFadeInImage(
            "https://p1.meituan.net/movie/41d222686f37e7b6b312079e8a4651f22058796.jpg"),
        _myFadeInImage(
            "https://p0.meituan.net/moviemachine/f0eb865d1cf85d3f939baaf3f9a44c251442128.jpg"),
        _myFadeInImage(
            "https://p0.meituan.net/moviemachine/4755165ffd65eb737bb5160ea911e0fa343438.jpg"),
        _myFadeInImage(
            "https://p0.meituan.net/movie/cdb164c203fc0c2465278ddd165e91c84503798.jpg"),
      ],
    );
  }

  Widget _myFadeInImage(String img) {
    final String _url = "images/none.png";
    return FadeInImage.assetNetwork(
      placeholder: _url,
      image: img,
      fit: BoxFit.cover,
    );
  }
}
