import 'package:flutter/material.dart';
import 'package:flutter_auth/NavigationPages/Chat/components/View/ChatPageView.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_auth/Global/Colors.dart' as myColors;

class NotificationListViewItem extends StatelessWidget {

  final String name;
  final String lastMessage;
  final String time;

  const NotificationListViewItem({
    Key key,
    this.name,
    this.lastMessage,
    this.time,
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
                    Text(
                      time,
                      style: TextStyle(fontSize: 12),
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
