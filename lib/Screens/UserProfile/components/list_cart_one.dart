import 'package:flutter/material.dart';

class CartOne extends StatefulWidget {
  @override
  _CartOneState createState() => _CartOneState();
}

class _CartOneState extends State<CartOne> {
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 200.0,
            child: new ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 3,
              itemBuilder: (BuildContext ctxt, int index) {
                return new Text("bdfg flgks");
              },
            ),
          ),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
