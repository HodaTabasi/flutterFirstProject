import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_auth/Model/MainCat.dart';
import 'package:flutter_auth/NavigationPages/Main/components/adds_slide_card.dart';
import 'package:flutter_auth/NavigationPages/Main/components/main_category.dart';
import 'package:flutter_auth/components/adds_card.dart';
import 'package:flutter_auth/components/adds_card1.dart';

class Body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BodyState();
  }
}

class _BodyState extends State<Body> {
  PageController pageController = PageController();
  int pageCount = 3;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      if(pageController.page>=pageCount - 1){
        pageController.animateToPage(0,
            duration: Duration(milliseconds: 100),
            curve: Curves.fastLinearToSlowEaseIn);
      }else{
        pageController.nextPage(
            duration: Duration(milliseconds: 100),
            curve: Curves.fastLinearToSlowEaseIn);
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
            shrinkWrap:true,
            children: [
            LimitedBox(
                maxHeight: 230,
                child: PageView(
                  controller: pageController,
                  children: List.generate(3, (index) {
                    return AddsSlideCard(
                        slideImage: "assets/images/beyond-meat-mcdonalds.png");
                  }),
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: new GridView.builder(
                  itemCount: destinations.length,
                  shrinkWrap: true,
                  gridDelegate:
                  new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                  itemBuilder: (BuildContext context, int index) {
                    MainCat destination = destinations[index];
                    return MainCategory(
                        catIcon: destination.image,
                        catName: destination.name);
                  })
            ),
            Container(
              color: Colors.grey[200],
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Most Popular",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: LimitedBox(
                maxHeight: 250,
                child:
                ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return AddsCard();
                  },
                ),
              ),
            ),
            Container(
              color: Colors.grey[200],
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
