import 'package:flutter/material.dart';
import 'package:fultter_catelog/pages/home_page.dart';
import 'package:fultter_catelog/pages/login_page.dart';
import 'package:fultter_catelog/utilities/route.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch : Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,

      ),
      initialRoute: "/",
      routes: { 
        "/" : (context) => const LoginPage(),
        MyRoute.homePage : (context) =>  const HomePage(),
        MyRoute.loginPage : (context) => const LoginPage(),
      },
    );
  }
}