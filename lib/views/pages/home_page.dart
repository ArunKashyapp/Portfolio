import 'package:flutter/material.dart';

import 'package:portfolio/animations/animations.dart';
import 'package:portfolio/views/styles/colors.dart';
import 'package:portfolio/views/styles/constants.dart';
import 'package:portfolio/views/styles/fonts.dart';

class Home_Page extends StatelessWidget {
  final void Function(int) onTabSelected;
  const Home_Page({
    Key? key,
    required this.onTabSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight - 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          isAntiAlias: true,
          fit: BoxFit.fill,
          alignment: Alignment.topLeft,
          image: AssetImage('assets/images/r.png'),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 150, left: 90),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(children: [
                    Text(
                      "Hi, I'm ",
                      overflow: TextOverflow.visible,
                      style: MyFonts.manrope(
                        fontSize: 45,
                        fontWeight: FontWeight.w400,
                        color: MyColors.lightGrey,
                      ),
                    ),
                    Text(
                      "Arun",
                      overflow: TextOverflow.visible,
                      style: MyFonts.manrope(
                        fontSize: 45,
                        fontWeight: FontWeight.w400,
                        color: MyColors.orange,
                      ),
                    ),
                  ]),
                  Text(
                    "a passionate Flutter developer\non a journey to build",
                    overflow: TextOverflow.visible,
                    style: MyFonts.manrope(
                      fontSize: 45,
                      fontWeight: FontWeight.w400,
                      color: MyColors.lightGrey,
                    ),
                  ),
                  // .animate(controller: _controller)
                  // .fadeIn(delay: 1.seconds, duration: .60.seconds)
                  // .slide(begin: const Offset(-0.3, 0)),
                  Wrap(
                    children: [
                      Text(
                        "beautiful,complex and functional",
                        style: MyFonts.manrope(
                          fontSize: 45,
                          fontWeight: FontWeight.w400,
                          color: MyColors.lightGrey,
                        ),
                      ),
                      // .animate()
                      // .fadeIn(delay: 1.seconds, duration: .60.seconds)
                      // .slide(begin: const Offset(-0.3, 0)),
                      AnimatedTextWidget(
                        onpressed: () {},
                        textStyle: MyFonts.manrope(
                          fontSize: 45,
                          fontWeight: FontWeight.w500,
                          color: MyColors.orange,
                        ),
                        texts: [
                          "android apps",
                          "ios apps",
                          "web apps",
                        ],
                      )
                      // .animate().fadeIn(delay: 2.seconds, duration: .60.seconds)
                      // .slide(begin: const Offset(-0.3, 0)),
                    ],
                  ),
                  Text(
                    "Empowering businesses to achieve their goals through innovative\nand user-centered digital solutions.",
                    overflow: TextOverflow.clip,
                    style: MyFonts.manrope(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      color: MyColors.mediumGrey,
                    ),
                  ),
                  // .animate().flipV(delay: 3.seconds, duration: .80.seconds),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      onTabSelected(3);
                    },
                    child: const Text(
                      'TEXT ME',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
