import 'package:flutter/material.dart';
import 'package:flutter_auth/Global/constants.dart';
import 'package:flutter_auth/NavigationPages/Chat/components/View/ChatPageView.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_auth/Global/Colors.dart' as myColors;

class AddsPlanItem extends StatelessWidget {
  final String name;
  final String lastMessage;

  const AddsPlanItem({
    Key key,
    this.name,
    this.lastMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              flex: 10,
              child: ListTile(
                title: Text(
                  name,
                  style: TextStyle(fontSize: 16),
                ),
                subtitle: Text(
                  lastMessage,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Container(
                        // padding: EdgeInsets.all(20),
                        // it will cover 80% of total width
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.shopping_cart,
                                    color: Colors.white,
                                  )),
                            )),
                      ),
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
        Divider(
          endIndent: 12.0,
          indent: 12.0,
          height: 0,
        ),
      ],
    );
  }
}
