import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/NavigationPages/Add/components/category_menu.dart';
import 'package:flutter_auth/Screens/SubCategory/components/TestSeekBarPage.dart';
import 'package:flutter_auth/Screens/SubCategory/components/radio_button.dart';
import 'package:flutter_auth/Screens/SubCategory/components/search_box.dart';
import 'package:flutter_auth/components/adds_card1.dart';
import 'file:///D:/Flutter/OnlineCode/Welcome-Login-Signup-Page-Flutter-master/lib/Global/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<String> tabsText = ["Top", "Outdoor", "Indoor", "Seeds", "Flowers"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabsText.length,
      child: Scaffold(
          appBar: AppBar(
            // backgroundColor: Color(0xff109618),
            backgroundColor: kPrimaryColor,
            title: Text("Product List"),
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 6.0,
              tabs: tabMaker(),
            ),
            actions: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/filter.svg",
                  width: 25,
                  height: 25,
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          insetPadding: MediaQuery.of(context).viewInsets +
                              const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 24.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20.0)), //this right here
                          child: ListView(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 16.0,
                                    left: 16.0,
                                    right: 16.0,
                                    bottom: 8.0),
                                child: Text(
                                  "Filter Page",
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(16.0),
                                child: SearchBox(),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  CategoryMenu(),
                                  CategoryMenu(),
                                  Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Text(
                                      "Condition",
                                      style: TextStyle(
                                        color: Colors.redAccent,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  RadioButtonO(),
                                  Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Text(
                                      "Price",
                                      style: TextStyle(
                                        color: Colors.redAccent,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  TestSeekBarPage(),
                                ],
                              ),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: RaisedButton(
                                        onPressed: () {},
                                        textColor: Colors.white,
                                        padding: const EdgeInsets.all(0.0),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: <Color>[
                                                Color(0xFF0D47A1),
                                                Color(0xFF1976D2),
                                                Color(0xFF42A5F5),
                                              ],
                                            ),
                                          ),
                                          padding: const EdgeInsets.all(10.0),
                                          child: const Text('Filter Now',
                                              style: TextStyle(fontSize: 20)),
                                        ),
                                      ),
                                    )
                                  ])
                            ],
                          ),
                        );
                      });
                },
              ),
            ],
          ),
          body: TabBarView(
            children: List.generate(tabsText.length, (index) {
              return new GridView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    //MainCat destination = destinations[index];
                    return CardAdds1();
                  });
            }),
          )),
    );
  }

  tabMaker() {
    List<Tab> tabs = List();
    for (var i = 0; i < tabsText.length; i++) {
      tabs.add(Tab(
        text: tabsText[i],
      ));
    }
    ;
    return tabs;
  }
}
