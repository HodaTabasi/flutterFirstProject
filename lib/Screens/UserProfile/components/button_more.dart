import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_auth/NavigationPages/Profile/components/adds_plan_item.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_auth/Global/Colors.dart' as myColors;

import '../../../Global/constants.dart';

class ButtomMore extends StatefulWidget {
  @override
  _ButtomMoreState createState() => _ButtomMoreState();
}

class _ButtomMoreState extends State<ButtomMore> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image = File(pickedFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(0.0),
          child: Container(
            // padding: EdgeInsets.all(20),
            width: size.width * 0.4,
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
                          insetPadding: MediaQuery.of(context).viewInsets +
                              const EdgeInsets.symmetric(
                                  horizontal: 0.0, vertical: 24.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20.0)), //this right here
                          child: ListView(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Text(
                                      "Profile",
                                      style: TextStyle(
                                        color: Colors.redAccent,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: getImage,
                                    child: CircleAvatar(
                                      backgroundImage: _image == null
                                          ? NetworkImage(
                                              "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg",
                                            )
                                          : Image.file(_image),
                                      radius: 50.0,
                                    ),
                                  ),
                                  SizedBox(height: size.height * 0.03),
                                  RoundedInputField(
                                    hintText: "Your Email",
                                    onChanged: (value) {},
                                  ),
                                  RoundedInputField(
                                    hintText: "User Name",
                                    onChanged: (value) {},
                                  ),
                                  RoundedInputField(
                                    hintText: "Your Mobile",
                                    onChanged: (value) {},
                                  ),
                                  RoundedPasswordField(
                                    onChanged: (value) {},
                                  ),
                                  RoundedButton(
                                    text: "Update Profile",
                                    press: () {},
                                  ),
                                  SizedBox(height: size.height * 0.03),
                                ],
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "more info",
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
          width: 10,
        ),
        Padding(
            padding: EdgeInsets.all(0.0),
            child: Container(
              // padding: EdgeInsets.all(20),
              width: size.width * 0.4,
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
                            insetPadding: MediaQuery.of(context).viewInsets +
                                const EdgeInsets.symmetric(
                                    horizontal: 0.0, vertical: 24.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20.0)), //this right here
                            child: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: myColors.backGround,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                    )),
                                child: ListView(
                                  children:List.generate(8, (index) {
                                    return AddsPlanItem(
                                      lastMessage:
                                      "Lorem ipsum dolor sit amet. Sed pharetra ante a blandit ultrices.",
                                      name: "Bree Jarvis",
                                    );
                                  })
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
                        Text(
                          "Adds Plain",
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
            )),
      ],
    );
    //   Container(
    //   width: 300.00,
    //   child: RaisedButton(
    //       onPressed: () {},
    //       shape:
    //           RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
    //       elevation: 0.0,
    //       padding: EdgeInsets.all(0.0),
    //       child: Ink(
    //         decoration: BoxDecoration(
    //           gradient: LinearGradient(
    //               begin: Alignment.centerRight,
    //               end: Alignment.centerLeft,
    //               colors: [kPrimaryColor, kPrimaryColor]),
    //           borderRadius: BorderRadius.circular(30.0),
    //         ),
    //         child: Container(
    //           constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
    //           alignment: Alignment.center,
    //           child: Text(
    //             "Contact me",
    //             style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 26.0,
    //                 fontWeight: FontWeight.w300),
    //           ),
    //         ),
    //       )),
    // );
  }
}
