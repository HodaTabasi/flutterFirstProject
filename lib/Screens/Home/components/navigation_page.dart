import 'package:flutter/cupertino.dart';
import 'package:flutter_auth/NavigationPages/Add/add_post.dart';
import 'package:flutter_auth/NavigationPages/Chat/chat_page.dart';
import 'package:flutter_auth/NavigationPages/Main/main_page.dart';
import 'package:flutter_auth/NavigationPages/Notification/notification_page.dart';
import 'package:flutter_auth/NavigationPages/Profile/profile_screen.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';

class NavigationPage {

  Widget returnOne;
  String returnTitleOne;
  Widget getPage(int num){
    switch(num){
      case 0:
        returnOne = MainPage();
        break;
      case 1:
        returnOne = Profile();
        break;
      case 2:
        returnOne = AddPost();
        break;
      case 3:
        returnOne =  NotificationPage();
        break;
      case 4:
        returnOne = ChatPage();
        break;
    }
    return returnOne;
  }

  String getPageTitle(int num){
    switch(num){
      case 0:
        returnTitleOne = "Home";
        break;
      case 1:
        returnTitleOne = "Profile";
        break;
      case 2:
        returnTitleOne = "AddPost";
        break;
      case 3:
        returnTitleOne =  "Notification";
        break;
      case 4:
        returnTitleOne = "Chat";
        break;
    }
    return returnTitleOne;
  }



}