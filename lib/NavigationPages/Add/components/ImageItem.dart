import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../Global/constants.dart';

class ImageItem extends StatefulWidget {
  @override
  _ImageItemState createState() => _ImageItemState();
}

class _ImageItemState extends State<ImageItem> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image = File(pickedFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        getImage();
      },
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                top: BorderSide(
                  color: kPrimaryLightColor,
                  // width: 3.0 --> you can set a custom width too!
                ),
                bottom: BorderSide(
                  color: kPrimaryLightColor,
                ),
                right: BorderSide(
                  color: kPrimaryLightColor,
                ),
                left: BorderSide(
                  color: kPrimaryLightColor,
                ))),
        child: Center(
          child: _image == null ? Icon(Icons.camera_alt) : Image.file(_image),
        ),
      ),
    );
  }
}
