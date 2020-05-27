import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iosTest/apperance/custom_gym_icons_icons.dart';
import 'package:iosTest/constants.dart';
import 'package:iosTest/pages/home/home_page.dart';
import 'package:iosTest/pages/news/news_page.dart';
import 'package:iosTest/pages/profile/profile_page.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _selcetedPage = 1;
  final List<Widget> _pages = [NewsPage(), HomePage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(60),
      //         child: Container(
      //     decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 10, spreadRadius: 5, color: cBlack.withOpacity(0.05), offset: Offset(0.0, -0.5))]),
      //     child: ClipRRect(
      //       borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
            
      //       child: AppBar(
      //     centerTitle: true,
      //     title: Text('Title'),
      //     ))
      //   ),
      // ),
      backgroundColor: cWhite,
      body: _pages[_selcetedPage],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 5,
            color: cBlack.withOpacity(0.05),
            offset: Offset(0.0, -0.5),
          )
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            elevation: 0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: cOrange,
            selectedIconTheme: IconThemeData(size: 30),
            iconSize: 25,
            currentIndex: _selcetedPage,
            onTap: (index) => setState(() => _selcetedPage = index),
            items: [
              BottomNavigationBarItem(
                icon: Icon(CustomGymIcons.ball),
                title: Text(''),
              ),
              BottomNavigationBarItem(
                icon: Icon(CustomGymIcons.dumbbells),
                title: Text(''),
              ),
              BottomNavigationBarItem(
                icon: Icon(CustomGymIcons.chest_expander),
                title: Text(''),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
