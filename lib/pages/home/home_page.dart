import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iosTest/constants.dart';
import '../../constants.dart';

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
          padding: EdgeInsets.fromLTRB(30, 10, 0, 15),
          child: SafeArea(
            child: Text(
              'Find a \nGymBuddy',
              style: TextStyle(color: cWhite, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Expanded(
                  child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                CategoryCard(),
                CategoryCard(),
                CategoryCard(),
              ],
              ),
              
            ),
          ),
        )
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 70,
      child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: cBlack,
      ),
      child: Text('text')
      ),
    );
  }
}
