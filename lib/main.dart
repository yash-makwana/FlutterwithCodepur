import 'package:flutter/material.dart';
import 'package:fultter_catelog/pages/home_page.dart';
import 'package:fultter_catelog/pages/login_page.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch : Colors.green,

      ),
      initialRoute:"/home" ,
      routes: {
        "/" : (context) => LoginPage(),
        "/home" : (context) => HomePage(),
      },
    );
  }
}