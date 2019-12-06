import 'package:flutter/material.dart';
// 路由
import '../pages/home/index.dart';
import '../pages/follow/follow.dart';
import '../pages/message/message.dart';
import '../pages/mine/mine.dart';
import '../pages/article/article.dart';

final routes = {
  "/": (context) => Index(),
  "/follow": (context) => Follow(),
  "/message": (context) => Message(),
  "/mine": (context) => Mine(),
  "/article": (context, {arguments}) => Article(arguments:arguments)
};

var route = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {//能寻找到对应的路由
    if (settings.arguments != null) {//页面跳转前有传参
      final Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context,
              arguments: settings.arguments));
      return route;
    } else {//页面跳转前没有传参
      final Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};