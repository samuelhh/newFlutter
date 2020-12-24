import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// import 'package:image_picker/image_picker.dart';
// import 'dart:html';
// import 'dart:io';

class PhotoApp extends StatefulWidget {
  @override
  _PhotoAppState createState() => _PhotoAppState();
}

class _PhotoAppState extends State<PhotoApp> {
  // File _image;
  // Future getImage() async {
  //   var image = await ImagePicker.pickImage(source: ImageSource.gallery);
  //   setState(() {
  //     _image.add(image);
  //   });
  // }


  _showToast() {
    Fluttertoast.showToast(
      msg: "测试拍照，开发中...",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER, // 消息框弹出的位置
      timeInSecForIosWeb: 1, // 消息框持续的时间（timeInSecForIosWeb	int (for ios & web)）
      backgroundColor: Colors.black54,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PhotoAPP"),
      ),
      body: Center(
        // child: _image == null ? Text("No image selected!") : Image.file(_image),
        child: Text("测试拍照，开发中..."),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        tooltip: 'pick image',
        onPressed: _showToast,
      ),
    );
  }
}
