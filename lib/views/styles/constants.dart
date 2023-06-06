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


class AssetPath{
  static const String images = 'assets/images';
    static const String Bg = '$images/Rectangle.png';
}