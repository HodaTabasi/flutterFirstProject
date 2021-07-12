import 'package:flutter/material.dart';

class SubCategoryItem extends StatefulWidget {
  @override
  _SubCategoryItemState createState() => _SubCategoryItemState();
}

class _SubCategoryItemState extends State<SubCategoryItem> {
  List<String> tabsText = ["Top", "Outdoor", "Indoor", "Seeds", "Flowers"];

  @override
  Widget build(BuildContext context) {
    return
       DefaultTabController(
          length: tabsText.length,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                isScrollable: true,
                tabs: tabMaker(),
              ),
              title: Text('Tabs Demo'),
            ),
            body: TabBarView(
              children: List.generate(tabsText.length, (index) {
                return Text(tabsText[index]);
              }),
            ),
          ),
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
