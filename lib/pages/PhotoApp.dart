import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:html';
import 'dart:io';


class PhotoApp extends StatefulWidget {
  @override
  _PhotoAppState createState() => _PhotoAppState();
}

class _PhotoAppState extends State<PhotoApp> {
  File _image;
  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image.add(image);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("拍照APP"),
      ),
      body: Center(
        child: _image == null ? Text("No image selected!") : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        tooltip: 'pick image',
        onPressed: getImage,
      ),
    );
  }
}
