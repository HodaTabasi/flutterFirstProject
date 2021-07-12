import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../CustomTextStyle.dart';
import '../CustomUtils.dart';

class CardAdds1 extends StatefulWidget {
  @override
  _CardAdds1State createState() => _CardAdds1State();
}

class _CardAdds1State extends State<CardAdds1> {

  @override
  Widget build(BuildContext context) {
    return
      Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: EdgeInsets.all(8.0),
      decoration:
      BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/beyond-meat-mcdonalds.png"),
                  ),
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8))),
            ),
            flex: 75,
          ),
          Expanded(
            flex: 25,
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Utils.getSizedBox(height: 8),
                  Text(
                    "NIKE Kyire II",
                    style: CustomTextStyle.textFormFieldSemiBold.copyWith(
                        color: Colors.black.withOpacity(.7), fontSize: 12),
                  ),
                  Utils.getSizedBox(height: 4),
                  Text(
                    "Exquisite you need him",
                    style: CustomTextStyle.textFormFieldSemiBold.copyWith(
                        color: Colors.black.withOpacity(.7), fontSize: 10),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8))),
            ),
          )
        ],
      ),
    );
  }
}
