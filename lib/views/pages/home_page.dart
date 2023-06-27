import 'package:flutter/material.dart';

import 'package:portfolio/animations/animations.dart';
import 'package:portfolio/views/styles/colors.dart';
import 'package:portfolio/views/styles/constants.dart';
import 'package:portfolio/views/styles/fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home_Page extends StatelessWidget {
  final void Function(int)? onTabSelected;
  const Home_Page({
    Key? key,
    required this.onTabSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileHome(onTabSelected: onTabSelected),
      desktop: DesktopHome(onTabSelected: onTabSelected),
    );
  }
}

class DesktopHome extends StatelessWidget {
  const DesktopHome({
    super.key,
    required this.onTabSelected,
  });

  final void Function(int p1)? onTabSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight - 100,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          alignment: Alignment.topLeft,
          image: AssetImage('assets/images/r.png'),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 150, left: 90, right: 90),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: RichText(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                  text: TextSpan(
                    text: "Hi there! jhgjs",
                    style: MyFonts.manrope(
                      fontSize: 45,
                      color: MyColors.lightGrey,
                      fontWeight: FontWeight.w400,
                    ),
                    children: <InlineSpan>[
                      TextSpan(
                        text: "I'm Arun",
                        style: MyFonts.manrope(
                          fontSize: 45,
                          color: MyColors.orange,
                        ),
                      ),
                      TextSpan(
                        text:
                            "a passionate Flutter developer\non a journey to build\n",
                        style: MyFonts.manrope(
                          fontSize: 45,
                          fontWeight: FontWeight.w400,
                          color: MyColors.lightGrey,
                        ),
                      ),
                      TextSpan(
                        text: "beautiful, complex, and functional",
                        style: MyFonts.manrope(
                          fontSize: 45,
                          fontWeight: FontWeight.w400,
                          color: MyColors.lightGrey,
                        ),
                      ),
                      WidgetSpan(
                        child: AnimatedTextWidget(
                          texts: ['android apps', 'ios apps', 'web apps'],
                          textStyle:
                              TextStyle(fontSize: 45, color: MyColors.orange),
                          onpressed: () {},
                        ),
                      ),
                      TextSpan(
                          text:
                              "\nEmpowering businesses to achieve their goals through innovative\nand user-centered digital solutions.\n",
                          style: MyFonts.manrope(
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                            color: MyColors.mediumGrey,
                          )),
                      // .animate().flipV(delay: 3.seconds, duration: .80.seconds),

                      WidgetSpan(
                        child: ElevatedButton(
                          onPressed: () {
                            onTabSelected!(3);
                          },
                          child: const Text(
                            'TEXT ME',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MobileHome extends StatelessWidget {
  const MobileHome({
    super.key,
    required this.onTabSelected,
  });

  final void Function(int p1)? onTabSelected;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: ScreenSize.screenWidth,
        height: ScreenSize.screenHeight,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            alignment: Alignment.topLeft,
            image: AssetImage('assets/images/r.png'),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 150, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 8,
                  text: TextSpan(
                    text: "Hi\n",
                    style: MyFonts.manrope(
                      fontSize: 40,
                      color: MyColors.lightGrey,
                      fontWeight: FontWeight.w400,
                    ),
                    children: <InlineSpan>[
                      TextSpan(
                        text: "I'm Arun\n",
                        style: MyFonts.manrope(
                          fontSize: 40,
                          color: MyColors.orange,
                        ),
                      ),
                      TextSpan(
                        text: "an aspiring Flutter developer",
                        style: MyFonts.manrope(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: MyColors.lightGrey,
                        ),
                      ),
                      TextSpan(
                        text: "beautiful, complex, and functional",
                        style: MyFonts.manrope(
                          fontSize: 45,
                          fontWeight: FontWeight.w400,
                          color: MyColors.lightGrey,
                        ),
                      ),
                      WidgetSpan(
                        child: AnimatedTextWidget(
                          texts: ['android apps', 'ios apps', 'web apps'],
                          textStyle:
                              TextStyle(fontSize: 45, color: MyColors.orange),
                          onpressed: () {},
                        ),
                      ),
                      TextSpan(
                          text:
                              "\nEmpowering businesses to achieve their goals through innovative\nand user-centered digital solutions.\n",
                          style: MyFonts.manrope(
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                            color: MyColors.mediumGrey,
                          )),
                      // .animate().flipV(delay: 3.seconds, duration: .80.seconds),

                      WidgetSpan(
                        child: ElevatedButton(
                          onPressed: () {
                            onTabSelected!(3);
                          },
                          child: const Text(
                            'TEXT ME',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
