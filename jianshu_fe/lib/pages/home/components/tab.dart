import 'package:flutter/material.dart';
import 'dart:ui';
import './articleCard.dart';

class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyTabBarButton(),
        MyTabBarContent()
      ],
    );
  }
}

class MyTabBarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
      color: Color.fromRGBO(255, 255, 255, 1),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
            margin: EdgeInsets.only(right: 5.0),
            child: Text('推荐'),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
            child: Text(
              '小岛',
              style: TextStyle(
                color: Color.fromRGBO(187, 187, 187, 1)
              )
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
            child: Text(
              '专题',
              style: TextStyle(
                color: Color.fromRGBO(187, 187, 187, 1)
              )
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
            child: Text(
              '连载',
              style: TextStyle(
                color: Color.fromRGBO(187, 187, 187, 1)
              )
            ),
          )
        ],
      )
    );
    
  }
}


class MyTabBarContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    return Container(
      height: _height-140.0,
      child: ListView.builder(
        itemCount: 23,
        itemBuilder: (BuildContext context, int index) {
          return ArticleCard(id: index);
        },
      ),
    );
  }
}