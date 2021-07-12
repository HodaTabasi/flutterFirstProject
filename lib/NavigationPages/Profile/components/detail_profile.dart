import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/NavigationPages/Profile/components/list_cart_one.dart';
import 'file:///D:/Flutter/OnlineCode/Welcome-Login-Signup-Page-Flutter-master/lib/Global/constants.dart';

class ProfileDetails extends StatefulWidget {
  @override
  _ProfileDetailsState createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: Text(
                  "Listing",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontStyle: FontStyle.normal,
                      fontSize: 20.0),
                )),
                Expanded(
                    child: Text(
                      "Pending",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontStyle: FontStyle.normal,
                          fontSize: 20.0),
                    )),
                Expanded(
                    child: Text(
                  "Favorite",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontStyle: FontStyle.normal,
                      fontSize: 20.0),
                )),
                Expanded(
                    child: Text(
                      "Refuse",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontStyle: FontStyle.normal,
                          fontSize: 20.0),
                    ))
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            CartOne()
          ],
        ),
      ),
    );
  }
}
