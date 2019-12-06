import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/material.dart' as prefix0;

class Article extends StatelessWidget {
  final arguments;
  Article({this.arguments});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize:Size.fromHeight(MediaQueryData.fromWindow(window).padding.top),
      //   child:SafeArea(
      //     top: true,
      //     child: Offstage(),
      //   )
      // ),
      // Text(
          // 'this is the article page'+
        // )
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Flutter更改状态栏颜色' + arguments['id'].toString(),
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 5.0),
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(50.0),
                        image: DecorationImage(image: NetworkImage('https://upload.jianshu.io/users/upload_avatars/2440780/0437f0a450e9?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96/format/webp'))
                      )
                    ),
                    ClipRRect(
                      child: prefix0.Image.network('https://upload.jianshu.io/users/upload_avatars/2440780/0437f0a450e9?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96/format/webp'),
                      clipBehavior: Clip.antiAlias,
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                    GestureDetector()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}