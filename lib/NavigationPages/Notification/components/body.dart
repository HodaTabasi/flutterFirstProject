import 'package:flutter/material.dart';
import 'package:flutter_auth/NavigationPages/Chat/components/Widget/Loading.dart';
import 'package:flutter_auth/Global/Colors.dart' as myColors;
import 'package:flutter_auth/NavigationPages/Notification/components/NotificationListViewItem.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading == true) {
      return Loading();
    } else {
      return Container(
        child: Container(
          decoration: BoxDecoration(
              color: myColors.backGround,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              )),
          child: ListView(
            children: <Widget>[
              NotificationListViewItem(
                lastMessage:
                "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                name: "Bree Jarvis",
                time: "19:27 PM",
              ),
              NotificationListViewItem(
                lastMessage:
                "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                name: "Alex",
                time: "19:27 PM",
              ),
              NotificationListViewItem(
                lastMessage:
                "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                name: "Carson Sinclair",
                time: "19:27 PM",
              ),
              NotificationListViewItem(
                lastMessage:
                "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                name: "Lucian Guerra",
                time: "19:27 PM",
              ),
              NotificationListViewItem(
                lastMessage:
                "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                name: "Sophia-Rose Bush",
                time: "19:27 PM",
              ),
              NotificationListViewItem(
                lastMessage:
                "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                name: "Mohammad",
                time: "19:27 PM",
              ),
              NotificationListViewItem(
                lastMessage:
                "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                name: "Jimi Cooke",
                time: "19:27 PM",
              ),
            ],
          ),
        ),
      );
    }
  }
}
