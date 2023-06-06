import 'package:flutter/material.dart';
import 'package:portfolio/views/styles/colors.dart';

import 'views/pages/home_page.dart';

void main(List<String> args) {
  runApp(new PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: MyColors.darkGrey2),
      home: Home_Page(),
    );
  }
}
