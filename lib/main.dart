import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:iosTest/constants.dart';
import 'package:iosTest/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(primaryColor: cYellow),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
