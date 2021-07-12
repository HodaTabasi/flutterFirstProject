import 'package:flutter/material.dart';
import 'package:flutter_auth/screens/details/components/app_bar.dart';
import 'package:flutter_auth/screens/details/components/body.dart';

import '../../Global/constants.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(),
      body: Body(),
    );
  }
}
