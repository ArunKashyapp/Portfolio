import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/views/shared/widgets/button.dart';
import 'package:portfolio/views/styles/colors.dart';
import 'package:portfolio/views/styles/constants.dart';
import 'package:portfolio/views/styles/fonts.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);

    return Container(
      color: MyColors.darkerGrey.withOpacity(0.7),
      height: 40,
      width: ScreenSize.screenWidth,
      child: Stack(
        children: [
          // Blurred background
          Positioned.fill(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildLogoRow(),
              buildButtonRow(),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildLogoRow() {
    return Row(
      children: [
        SizedBox(width: 100),
        Align(
          alignment: Alignment.centerLeft,
          child: Icon(
            Icons.all_inclusive_sharp,
            color: MyColors.lightGrey,
            size: 30,
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "oddEVEN",
            style: MyFonts.manrope(
              color: MyColors.lightGrey,
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TexButton(
          title: 'Home',
          onPressed: () {},
        ),
        SizedBox(width: 20),
        TexButton(
          title: 'Projects',
          onPressed: () {},
        ),
        SizedBox(width: 20),
        Padding(
          padding: const EdgeInsets.only(right: 200),
          child: TexButton(
            title: 'Contact',
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
