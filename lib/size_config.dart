import 'package:flutter/cupertino.dart';

double relHeight(double height, BuildContext context) {
  const double iPhone13height = 844;

  double screenHeight = MediaQuery.of(context).size.height;

  ///Get Screen Height

  ///Get % height of an iphone screen from input height then multiply
  ///by the actual screen height to get the correspionding  height for your
  ///actual screen

  double relativeHeight = screenHeight * (height / iPhone13height);
  // print("screen height is $screenHeight");
  // print(" rel height is $relativeHeight");

  return relativeHeight;
}

double relWidth(double width, BuildContext context) {
  const double iPhone13Width = 360;

  double screenWidth = MediaQuery.of(context).size.width;

  ///Get Screen width

  ///Get % width of an iphone screen from input width then multiply
  ///by the actual screen width to get the correspionding width for your
  ///actual screen
  double relativeWidth = (width / iPhone13Width) * screenWidth;
  // print("screen width is $screenWidth");
  // print(" rel width is $relativeWidth");
  return relativeWidth;
}
