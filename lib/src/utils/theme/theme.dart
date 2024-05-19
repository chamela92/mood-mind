import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

 
class TAppTheme {

  static ThemeData lightTheme = ThemeData(

    brightness: Brightness.light,
    textTheme: TextTheme(
        headlineLarge:GoogleFonts.montserrat(
          color:Colors.red,
          
      ),
      titleMedium: GoogleFonts.poppins(
        color:Colors.black,
        fontSize: 24,
      )
     

    )
  );

static ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,

    textTheme: TextTheme(
        headlineLarge:GoogleFonts.montserrat(
          color:Colors.red,
          
      ),
      titleMedium: GoogleFonts.sora(
        color:Colors.grey,
        fontSize: 16,
      ),
        titleLarge: GoogleFonts.sora(
          fontSize: 60,
          color: Colors.red,
          fontWeight: FontWeight.bold,

    )
)
);

}


