import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/views/styles/colors.dart';
import 'package:portfolio/views/styles/constants.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/views/styles/fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../animations/animations.dart';

class TechStack extends StatefulWidget {
  const TechStack({super.key});

  @override
  State<TechStack> createState() => _TechStackState();
}

class _TechStackState extends State<TechStack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            margin: EdgeInsets.only(
              top: 2,
            ),
            width: double.infinity,
            height: ScreenSize.screenHeight * 0.5 + 250,
            color: Colors.black,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "My Skills",
                  textAlign: TextAlign.center,
                  style: MyFonts.manrope(
                      fontSize: 30,
                      color: MyColors.veryLightGrey,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      clip(
                          "Flutter",
                          [
                            "A Cross-platform UI Toolkit for Building Beautiful, Native-Performance Apps for iOS, Android, Web, and Desktop",
                            'Advanced level'
                          ],
                          "https://flutter.dev",
                          logo: SizedBox(
                              height: 50,
                              width: 50,
                              child: Logo(Logos.flutter))),
                      clip(
                          "Firebase",
                          [
                            "A Comprehensive Platform for Building Mobile and Web Applications with Real-time Data, Authentication, and Cloud Services",
                            "Intermediate level"
                          ],
                          "https://firebase.google.com",
                          logo: SizedBox(
                              height: 50,
                              width: 50,
                              child: Logo(
                                Logos.firebase,
                              ))),
                      clip(
                          "MySQl",
                          [
                            "An Open-Source Relational Database Management System for Storing and Managing Structured Data",
                            "Intermediate level"
                          ],
                          "https://www.mysql.com",
                          logo: SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/images/mysql.png'))),
                      clip(
                          "Dart",
                          [
                            "A Powerful and Flexible Programming Language for Building Apps, Websites, and Server-Side Applications",
                            "Intermediate level"
                          ],
                          "https://dart.dev",
                          logo: SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset(
                              'assets/images/Dart.png',
                              fit: BoxFit.fill,
                            ),
                          )),
                      clip(
                          "Figma",
                          [
                            "Simplify your design workflow with powerful collaboration and prototyping tools. Create stunning designs for web and mobile effortlessly.",
                            "Intermediate level"
                          ],
                          "https://www.figma.com",
                          logo: SizedBox(
                              height: 50, width: 50, child: Logo(Logos.figma))),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    clip(
                        "Github",
                        [
                          "GitHub is a leading platform for version control and code collaboration.",
                          "Begineer"
                        ],
                        "https://github.com/ArunKashyapp",
                        logo: SizedBox(
                            height: 50,
                            width: 50,
                            child: Logo(
                              Logos.github,
                              colorFilter: ColorFilter.linearToSrgbGamma(),
                            ))),
                    clip(
                        "Python",
                        [
                          "A Versatile and Powerful Programming Language for Rapid Development.",
                          "Intermediate level"
                        ],
                        "https://www.python.org",
                        logo: SizedBox(
                            height: 50,
                            width: 50,
                            child: Logo(
                              Logos.python,
                            ))),
                  ],
                )
              ],
            )),
      ],
    );
  }
}

Widget clip(heading, subheading, url, {Widget? logo}) {
  return ClipRect(
      child: Container(
    height: 250,
    width: 250,
    child: Column(
      children: [
        const SizedBox(height: 10),
        if (logo != null) ...[
          logo,
          const SizedBox(height: 5),
        ],
        GestureDetector(
          onTap: () async {
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: InkWell(
            child: Text(
              heading,
              style: MyFonts.manrope(fontSize: 20, color: MyColors.lightGrey),
            ),
          ),
        ),
        const SizedBox(height: 5),
        // Text(
        //   subheading,
        //   textAlign: TextAlign.center,
        //   style: MyFonts.manrope(
        //     fontSize: 16,
        //     color: MyColors.mediumGrey,
        //     fontWeight: FontWeight.w200,
        //   ),
        // )

        AnimatedTextWidget(
          textStyle: MyFonts.manrope(
            fontSize: 16,
            fontWeight: FontWeight.w200,
            color: MyColors.mediumGrey,
          ),
          texts: subheading,
        ),
      ],
    ),
  ));
}
