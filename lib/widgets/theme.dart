import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation : 0.0,
          iconTheme : IconThemeData(color : Colors.black), 
          titleTextStyle: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
        ),

      );
      static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );
    //COLORS
    static Color creamColor = const Color(0xfff5f5f5);
    static Color bluishColor = const Color(0xff403b58);
    
}