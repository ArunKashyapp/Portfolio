import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:portfolio/views/styles/colors.dart';
import 'package:portfolio/views/styles/constants.dart';

class Header extends StatelessWidget {
  final void Function(int) onTabSelected; // Define the callback function

  const Header({
    Key? key,
    required this.onTabSelected, // Pass the callback function as a parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);

    return Container(
      color: Colors.black.withOpacity(0.2),
      height: 50,
      width: ScreenSize.screenWidth,
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0, sigmaY: 20),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90, right: 90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                HeaderButton(
                    icon: Icons.person,
                    onPressed: () {
                      onTabSelected(0);
                    },
                    text: "About"),
                HeaderButton(
                    icon: Icons.code_rounded,
                    onPressed: () {
                      onTabSelected(2);
                    },
                    text: "Projects"),
                HeaderButton(
                    icon: Icons.download,
                    onPressed: () {
                      onTabSelected(1);
                    },
                    text: "Resume"),
                HeaderButton(
                    icon: Icons.call,
                    onPressed: () {
                      onTabSelected(3);
                    },
                    text: "Contact"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderButton extends StatelessWidget {
  const HeaderButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final void Function()? onPressed;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
      child: ElevatedButton.icon(
        icon: Icon(
          icon,
        ),
        style: ButtonStyle(
          overlayColor: MaterialStatePropertyAll(MyColors.darkerGrey),
          iconColor: MaterialStatePropertyAll(MyColors.orange),
          backgroundColor: MaterialStatePropertyAll(Colors.transparent),
          minimumSize: MaterialStateProperty.all(const Size(50, 40)),
        ),
        onPressed: onPressed,
        label: Text(
          text,
          style: const TextStyle(color: MyColors.orange),
        ),
      ),
    );
  }
}
