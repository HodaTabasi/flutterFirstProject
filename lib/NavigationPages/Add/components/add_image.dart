import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/NavigationPages/Add/components/ImageItem.dart';
import 'package:flutter_auth/NavigationPages/Add/components/category_menu.dart';
import 'package:flutter_auth/NavigationPages/Add/components/condition_menu.dart';

import '../../../Global/constants.dart';

class AddImage extends StatefulWidget {
  @override
  _AddImageState createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Add Photos",
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(6, (index) {
              return ImageItem();
            }),
          ),
        ),
        CondutionMenu(),
        CategoryMenu(),
      ],
    );
  }
}
