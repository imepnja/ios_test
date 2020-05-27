import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iosTest/constants.dart';
import 'package:iosTest/pages/news/news_page.dart';
import 'package:iosTest/pages/profile/profile_page.dart';

class HomePage extends StatelessWidget {
  bool isIos = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: cDark,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))),
          padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
          child: Text('Find a \nGymBuddy', style: TextStyle(color: cWhite, fontWeight: FontWeight.bold)),
          )
      ],
    );
  }
}
