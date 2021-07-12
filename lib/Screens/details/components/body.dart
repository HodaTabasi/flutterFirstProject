import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/details/components/item_image.dart';
import 'package:flutter_auth/Screens/details/components/item_info.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            LimitedBox(
                maxHeight: 250,
                child: PageView(
                  children: List.generate(3, (index) {
                    return ItemImage(
                        imgSrc: "assets/images/beyond-meat-mcdonalds.png");
                  }),
                )),
            ItemInfo()
          ],
        ),
      ),
    );
  }
}


