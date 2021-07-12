import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Global/constants.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({
    Key key,
    @required this.size,
    this.press,
  }) : super(key: key);

  final Size size;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            // padding: EdgeInsets.all(20),
            width: size.width * 0.5,
            // it will cover 80% of total width
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20.0)), //this right here
                          child: Container(
                            height: 250,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Text("Chooese your Contact Way?"),
                                  ),
                                  SizedBox(
                                    width: 320.0,
                                    child: RaisedButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.message_outlined,color: Colors.white,),
                                      label: Text(
                                        "Chat",
                                        style: TextStyle(color: Colors.white,fontSize: 16.0),
                                      ),
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 320.0,
                                    child:  RaisedButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.phone,color: Colors.white,),
                                      label: Text(
                                        "Call By Phone",
                                        style: TextStyle(color: Colors.white,fontSize: 16.0),
                                      ),
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 320.0,
                                    child:  RaisedButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.email,color: Colors.white,),
                                      label: Text(
                                        "Contact By Email",
                                        style: TextStyle(color: Colors.white,fontSize: 16.0),
                                      ),
                                      color: kPrimaryColor,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        "assets/icons/contacts.svg",
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Contact",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              // padding: EdgeInsets.all(20),
              width: size.width * 0.2,
              // it will cover 80% of total width
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: press,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/icons/heart.svg",
                          width: 25,
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
