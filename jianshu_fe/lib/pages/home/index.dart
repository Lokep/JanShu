import 'package:flutter/material.dart';
import './components/tab.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(248, 248, 248, 1),
        child: MyTabBar()
      )
    );
  }
}


