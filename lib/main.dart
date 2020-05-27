import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:iosTest/constants.dart';
import 'package:iosTest/tabs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    bool isIos = false;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return 
    // isIos ? CupertinoApp(
    //   theme: CupertinoThemeData(primaryColor: cYellow),
    //   debugShowCheckedModeBanner: false,
    //   home: Tabs(),
    // ): 
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: cYellow,
        fontFamily: 'Poppins'
        ),
      home: Tabs(),
    );
  }
}
