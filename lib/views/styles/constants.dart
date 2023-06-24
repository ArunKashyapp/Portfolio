import 'package:flutter/material.dart';

class ScreenSize {
  static double screenWidth = 0.0;
  static double screenHeight = 0.0;

  static void init(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData.size.width;
    screenHeight = mediaQueryData.size.height;
  }
}


