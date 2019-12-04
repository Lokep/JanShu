import 'package:flutter/material.dart';
import './widgets/tabs/tabs.dart';
import './routers/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Tabs(),
      initialRoute: '/',
      // routes: routes,
      onGenerateRoute: route,
    );
  }
}

