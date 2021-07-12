import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(22.4),
        alignment: Alignment.center,
        child: ListView(
          children: <Widget>[
            Image.asset(
              'IMG/logo.jpg',
              height: 100.0,
              width: 100.0,
            ),
            Container(
              height: 240.0,
              width: 300.0,
              padding: EdgeInsets.only(left: 22.0, right: 22.0, top: 22.0),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      style:
                          TextStyle(fontSize: 18.33, color: Colors.deepPurple),
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.person,
                            color: Colors.deepPurple,
                            size: 22.4,
                          ),
                          hintText: 'user name'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      style:
                          TextStyle(fontSize: 18.33, color: Colors.deepPurple),
                      textAlign: TextAlign.start,
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            color: Colors.deepPurple,
                            size: 22.4,
                          ),
                          hintText: 'user password'),
                    ),
                  )
                ],
              ),
            ),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 60.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(
                          color: Colors.deepPurple,
                          textColor: Colors.white,

                          child: Text(
                            'LogIn',
                            style: TextStyle(fontSize: 18.8),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(
                          color: Colors.red,
                          textColor: Colors.white,

                          child: Text(
                            'Clear',
                            style: TextStyle(fontSize: 18.8),
                          )),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
