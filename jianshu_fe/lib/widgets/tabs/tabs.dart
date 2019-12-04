import 'package:flutter/material.dart';
import 'dart:ui';

// tab页面
import '../../pages/home/index.dart';
import '../../pages/follow/follow.dart';
import '../../pages/message/message.dart';
import '../../pages/mine/mine.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) :super(key : key);
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  int _currentIndex = 0;
  List _pageList = [
    Index(),
    Follow(),
    Message(),
    Mine()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:Size.fromHeight(MediaQueryData.fromWindow(window).padding.top),
        child:SafeArea(
          top: true,
          child: Offstage(),
        )
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        fixedColor: Colors.red[200],
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.watch),
            title: Text('关注')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('消息')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('个人中心')
          ),
        ],
      ),
    );
  }
}