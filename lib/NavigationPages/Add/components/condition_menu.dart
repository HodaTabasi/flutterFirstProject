import 'package:flutter/material.dart';

import '../../../Global/constants.dart';

class CondutionMenu extends StatefulWidget {
  @override
  _CondutionMenuState createState() => _CondutionMenuState();
}

class _CondutionMenuState extends State<CondutionMenu> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Select Condition",
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.0),
          child: DropdownButton(
              value: _value,
              items: [
                DropdownMenuItem(
                  child: Text("New"),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("Used"),
                  value: 2,
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              }),
        )
      ],
    );
    ;
  }
}
