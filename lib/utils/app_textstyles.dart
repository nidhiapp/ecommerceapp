import 'package:ecommerce/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static TextStyle latoEightFourtyPurple = GoogleFonts.lato(
    textStyle: TextStyle(color: AppColors.purpleCol,
    fontSize: 40,
    fontWeight: FontWeight.w800));

    static TextStyle latoSixFourtyPurple = GoogleFonts.lato(
    textStyle: TextStyle(color: AppColors.purpleCol,
    fontSize: 15,
    fontWeight: FontWeight.w700)); 

    static TextStyle latoEightThirtyWhite= GoogleFonts.lato(
    textStyle: TextStyle(color: AppColors.whiteCol,
    fontSize: 25,
    fontWeight: FontWeight.w800));
    
    static TextStyle latoBoldTwentyWhite= GoogleFonts.lato(
    textStyle: TextStyle(color: Colors.white, fontSize: 20.0,
                fontWeight: FontWeight.bold,
                ),);
   static TextStyle latoFiveTwentyFiveAmber= GoogleFonts.lato(
    textStyle: TextStyle(color: Color.fromARGB(255, 223, 172, 17), fontSize: 20.0,
                fontWeight: FontWeight.w600,
                ),);
}
