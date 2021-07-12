import 'package:flutter/material.dart';
import 'package:flutter_auth/NavigationPages/Add/components/category_menu.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_area_field.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Global/constants.dart';

class PlanitData extends StatefulWidget {
  @override
  _PlanitDataState createState() => _PlanitDataState();
}

class _PlanitDataState extends State<PlanitData> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Contune Information",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left),
              ),
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: "Title",
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Price",
                onChanged: (value) {},
              ),
              RoundedInputAreaField(
                hintText: "write Description",
                onChanged: (value) {},
              ),
              CategoryMenu(),
              CategoryMenu(),
              RoundedInputField(
                hintText: "Promo Code",
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "Update Data",
                press: () {},
              ),
              SizedBox(height: size.height * 0.03),
            ],
          ),
        ],
      ),
    );
  }
}
