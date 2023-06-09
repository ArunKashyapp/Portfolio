import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:portfolio/views/styles/constants.dart';

import '../../styles/colors.dart';
import 'button.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.black.withOpacity(0.7),
      height: 400,
      width: double.infinity,
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
            children: [],
          ),
        ],
      ),
    );
  }
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
