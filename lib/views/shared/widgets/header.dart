import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GNav(
                    rippleColor: MyColors.orange,
                    hoverColor: MyColors.orange,
                    haptic: true,
                    tabBorderRadius: 15,
                    tabActiveBorder: Border.all(color: Colors.black, width: 1),
                    tabBorder: Border.all(color: MyColors.orange, width: 1),
                    curve: Curves.easeOutExpo,
                    duration: const Duration(milliseconds: 100),
                    gap: 8,
                    color: MyColors.lightGrey,
                    activeColor: MyColors.black,
                    iconSize: 24,
                    tabBackgroundColor: MyColors.orange,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    tabs: [
                      GButton(
                        icon: Icons.home,
                        text: 'Home',
                        onPressed: () {
                          onTabSelected(
                              0); // Call the callback function with the tab index
                        },
                      ),
                      GButton(
                        icon: Icons.code,
                        text: 'Projects',
                        onPressed: () {
                          onTabSelected(
                              2); // Call the callback function with the tab index
                        },
                      ),
                      GButton(
                        icon: Icons.download,
                        text: 'Resume',
                        onPressed: () {
                          onTabSelected(
                              1); // Call the callback function with the tab index
                        },
                      ),
                      GButton(
                        icon: Icons.call,
                        text: 'Contact',
                        onPressed: () {
                          onTabSelected(
                              3); // Call the callback function with the tab index
                        },
                      ),
                    ],
                  ),
                ),
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
    required this.onPressed,
    required this.text,
    super.key,
  });
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size(50, 40)),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
