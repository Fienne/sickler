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
      textTheme: const TextTheme(
        bodyText1: kBodyBold,
        bodyText2: kBody,
        headline1: kHeading,
        headline2: kHeadingLight,
      ),
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
      scaffoldBackgroundColor: Colors.black,
      brightness: Brightness.dark,
      backgroundColor: kDark,
      iconTheme: const IconThemeData(color: Colors.white),
      primaryIconTheme: const IconThemeData(color: Colors.white),
      fontFamily: 'Poppins',
      textTheme: const TextTheme(
        bodyText1: kBodyBold,
        bodyText2: kBody,
        headline1: kHeading,
        headline2: kHeadingLight,
      ),
      colorScheme: const ColorScheme.dark().copyWith(secondary: kFuchsia80),
      cardColor: kDark80);
}
