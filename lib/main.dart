import 'package:flutter/material.dart';
import 'package:portfolio/views/pages/collection.dart';
import 'package:portfolio/views/styles/colors.dart';

void main(List<String> args) {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            elevatedButtonTheme:  ElevatedButtonThemeData(
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(
              const    TextStyle(color: MyColors.black),
                ),
                minimumSize: MaterialStateProperty.all(const Size(200, 50)),
                overlayColor: const MaterialStatePropertyAll(Colors.deepOrange),
                backgroundColor: MaterialStateProperty.all(MyColors.orange),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        1), // Adjust the borderRadius value here
                  ),
                ),
              ),
            ),
            useMaterial3: true,
            scaffoldBackgroundColor: MyColors.darkGrey2),
        home: const Collection());
  }
}
