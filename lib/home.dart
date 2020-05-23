import 'package:flutter/cupertino.dart';
import 'package:iosTest/constants.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        iconSize: 34,
        activeColor: cOrange,
        items: [
          BottomNavigationBarItem(
            // title: Text('news'),
            icon: Icon(CupertinoIcons.news),
          ),
          BottomNavigationBarItem(
            // title: Text('add'),
            icon: Icon(CupertinoIcons.add),
          ),
          BottomNavigationBarItem(
            // title: Text('log'),
            icon: Icon(CupertinoIcons.create),
          ),
        ],
      ),
      resizeToAvoidBottomInset: false,
      tabBuilder: (context, index) {},
    );
  }
}
