import 'package:flutter/material.dart';
import 'constants.dart';

///---------------Light Theme----------////
ThemeData sicklerLightTheme(BuildContext context) {
  return ThemeData(
      appBarTheme: appBarTheme,
      primaryColor: kPurple80,
      primaryColorLight: kPurple40,
      primaryColorDark: kPurple,
      scaffoldBackgroundColor: Colors.white,
      brightness: Brightness.light,
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: kDark),
      primaryIconTheme: const IconThemeData(color: kDark),
      fontFamily: 'Poppins',
      textTheme: TextTheme(
        bodyText1: kBodyBold,
        bodyMedium: kButtonText,
        bodySmall: kFootNote,
        headlineLarge: kHeading,
        headlineMedium: kHeadingLight,
      ),
      //colorScheme: ColorScheme.light().copyWith(secondary: cLightGrey),
      colorScheme: const ColorScheme.light().copyWith(secondary: kFuchsia80),
      cardColor: kDark20);
}

///-----------------Dark Theme--------------////

ThemeData sicklerDarkTheme(BuildContext context) {
  return ThemeData(
      appBarTheme: appBarTheme,
      primaryColor: kPurple80,
      primaryColorLight: kPurple40,
      primaryColorDark: kPurple,
      scaffoldBackgroundColor: kDark,
      brightness: Brightness.dark,
      backgroundColor: kDark,
      iconTheme: const IconThemeData(color: Colors.white),
      primaryIconTheme: const IconThemeData(color: Colors.white),
      fontFamily: 'Poppins',
      textTheme: TextTheme(
        bodyText1: kBodyBold,
        bodyMedium: kButtonText,
        bodySmall: kFootNote,
        headlineLarge: kHeading,
        headlineMedium: kHeadingLight,
      ),
      //colorScheme: ColorScheme.light().copyWith(secondary: cLightGrey),
      colorScheme: const ColorScheme.dark().copyWith(secondary: kFuchsia60),
      cardColor: kDark80);
}
