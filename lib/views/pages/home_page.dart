import 'package:flutter/material.dart';
import 'package:portfolio/animations/animations.dart';
import 'package:portfolio/views/pages/techStack.dart';
import 'package:portfolio/views/shared/widgets/header.dart';
import 'package:portfolio/views/styles/colors.dart';
import 'package:portfolio/views/styles/constants.dart';
import 'package:portfolio/views/styles/fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_animate/flutter_animate.dart';
class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobile(),
      desktop: desktop(),
      tablet: tablet(),
    );
  }
}

Widget desktop() {
  return SafeArea(
    child: Scaffold(
      body: Stack(
        children: [
          ListView(children: [
            // Lottie.asset('assets/images/hicon.json'),
            Homm(),
            TechStack()
          ]),
          Positioned(
            child: Header(),
            top: 0,
          ),
        ],
      ),
    ),
  );
}

Widget mobile() {
  return Scaffold();
}

Widget tablet() {
  return Scaffold();
}

class Homm extends StatefulWidget {
  const Homm({super.key});

  @override
  State<Homm> createState() => _HommState();
}

class _HommState extends State<Homm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      decoration: BoxDecoration(
          image: DecorationImage(
              isAntiAlias: true,
              fit: BoxFit.fill,
              alignment: Alignment.topLeft,
              image: AssetImage('assets/images/r.png'))),
      child: Padding(
          padding: const EdgeInsets.only(top: 190, left: 90),
          child: Row(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Hi, I'm Your Arun,\na passionate Flutter developer\non a journey to build",
                  style: MyFonts.manrope(
                    fontSize: 45,
                    fontWeight: FontWeight.w400,
                    color: MyColors.lightGrey,
                  ),
                )
                    .animate()
                    .fadeIn(delay: 1.seconds, duration: .60.seconds)
                    .slide(begin: const Offset(-0.3, 0)),
                Wrap(
                  children: [
                    Text(
                      "beautiful,complex and functional ",
                      style: MyFonts.manrope(
                        fontSize: 45,
                        fontWeight: FontWeight.w400,
                        color: MyColors.lightGrey,
                      ),
                    )
                        .animate()
                        .fadeIn(delay: 1.seconds, duration: .60.seconds)
                        .slide(begin: const Offset(-0.3, 0)),
                    AnimatedTextWidget(
                      textStyle: MyFonts.manrope(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        color: MyColors.mediumGrey,
                      ),
                      texts: [
                        "android apps",
                        "ios apps",
                        "web apps",
                      ],
                    )
                        .animate()
                        .fadeIn(delay: 2.seconds, duration: .60.seconds)
                        .slide(begin: const Offset(-0.3, 0)),
                  ],
                ),
                Text(
                  "Empowering businesses to achieve their goals through innovative\nand user-centered digital solutions.",
                  style: MyFonts.manrope(
                    fontSize: 20,
                    fontWeight: FontWeight.w200,
                    color: MyColors.mediumGrey,
                  ),
                ).animate().flipV(delay: 3.seconds, duration: .80.seconds),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: 200,
                    height: 40, // Set the desired width here
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(MyColors.lighterGrey),
                      ),
                      onPressed: () {},
                      child: Text('TEXT ME'),
                    ).animate().flipV(delay: 3.seconds, duration: .40.seconds)),
              ]),
              SizedBox(
                width: 50,
              ),
 
            ],
          )),
    );
  }
}

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: ScreenSize.screenHeight,
//       decoration: BoxDecoration(
//           image: DecorationImage(
//               isAntiAlias: true,
//               fit: BoxFit.fill,
//               alignment: Alignment.topLeft,
//               image: AssetImage('assets/images/r.png'))),
//       child: Padding(
//         padding: const EdgeInsets.only(left: 100, top: 200),
//         child: Column(
//           children: [
//             Align(
//               alignment: Alignment.topLeft,
//               child: Wrap(
//                 children: [
//                   Text(
//                     "Hi, I'm Your Arun,\na passionate Flutter developer\non a journey to build\nbeautiful,complex and functional ",
//                     style: MyFonts.manrope(
//                       fontSize: 45,
//                       fontWeight: FontWeight.w400,
//                       color: MyColors.lightGrey,
//                     ),
//                   )
//                       .animate()
//                       .fadeIn(delay: 1.seconds, duration: .60.seconds)
//                       .slide(begin: const Offset(-0.3, 0)),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 181),
//                     child: AnimatedTextWidget(
//                       textStyle: MyFonts.manrope(
//                         fontSize: 47,
//                         fontWeight: FontWeight.w400,
//                         color: MyColors.evenDarkerGrey,
//                       ),
//                       texts: [
//                         "android apps.",
//                         "ios apps.",
//                         "websites.",
//                       ],
//                     ),
//                   ),
//                 ],
//               )
//                   .animate()
//                   .fadeIn(delay: 1.seconds, duration: .60.seconds)
//                   .slide(begin: const Offset(-0.3, 0)),
//             ),
//             Align(
//                 alignment: Alignment.topLeft,
//                 child: Text(
//                   "Empowering businesses to achieve their goals through innovative\nand user-centered digital solutions.",
//                   style: MyFonts.manrope(
//                     fontSize: 20,
//                     fontWeight: FontWeight.w200,
//                     color: MyColors.mediumGrey,
//                   ),
//                 )
//                     .animate()
//                     .visibility(delay: 1.seconds, duration: .80.seconds)),
//             SizedBox(
//               height: 20,
//             ),
//             Align(
//               alignment: Alignment.centerLeft,
//               child: SizedBox(
//                   width: 200,
//                   height: 40, // Set the desired width here
//                   child: ElevatedButton(
//                     style: ButtonStyle(
//                       backgroundColor:
//                           MaterialStateProperty.all(MyColors.lighterGrey),
//                     ),
//                     onPressed: () {},
//                     child: Text('TEXT ME'),
//                   ).animate().flipV(delay: 2.seconds, duration: .40.seconds)),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
