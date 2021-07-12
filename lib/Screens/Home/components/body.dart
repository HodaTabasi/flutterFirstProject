import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/NavigationPages/Main/main_page.dart';
import 'package:flutter_auth/Screens/Home/components/Home.dart';
import 'package:flutter_auth/Screens/Home/components/navigation_page.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';

class Body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BodyState();
  }
}

class _BodyState extends State<Body> {
  int pageIndex = 0;
  int pageIndex1 = 0;
  Widget _showPage = MainPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(NavigationPage().getPageTitle(pageIndex1)),
      ),
      body: _showPage,
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.deepPurple,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.deepPurple,
        height: 55,
        items: [
          Icon(Icons.home, size: 25, color: Colors.white),
          Icon(Icons.person, size: 25, color: Colors.white),
          Icon(Icons.post_add, size: 25, color: Colors.white),
          Icon(Icons.notifications, size: 25, color: Colors.white),
          Icon(
            Icons.chat,
            size: 25,
            color: Colors.white,
          ),
        ],
        animationDuration: Duration(microseconds: 600),
        animationCurve: Curves.easeInOut,
        index: pageIndex,
        onTap: (int tappedIndex) {
          setState(() {
            pageIndex1 = tappedIndex;
            _showPage = NavigationPage().getPage(tappedIndex);
          });
        },
      ),
    );
  }
}
