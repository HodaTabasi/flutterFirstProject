import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/SubCategory/addlist_screen.dart';

class MainCategory extends StatelessWidget {
  String catIcon;
  String catName;

  MainCategory({this.catIcon, this.catName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return AddListScreen();
            },
          ),
        );
      },
      borderRadius: BorderRadius.circular(20),
      child:Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: Image.asset(catIcon),
            ),
            Text(
              catName,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ) ,
    )
      ;
  }
}
