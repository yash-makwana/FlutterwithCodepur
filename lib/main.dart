import 'package:flutter/material.dart';
import 'package:fultter_catelog/pages/home_page.dart';
import 'package:fultter_catelog/pages/login_page.dart';
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
      initialRoute: "/home",
      routes: { 
        "/home" : (context) =>  const LoginPage(),
        "/" : (context) => const HomePage(),
      },
    );
  }
}