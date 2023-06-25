import 'package:flutter/material.dart';
import 'package:portfolio/views/styles/colors.dart';
import 'package:portfolio/views/styles/constants.dart';
import 'package:portfolio/views/styles/fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight * 0.10 + 1200,
      color: MyColors.black.withRed(1),
      child: Column(
        children: [
          Projects(
              "03 / Chess",
              "Unleash Your Strategic Skills with Flutter Chess Game",
              "Immerse yourself in the world of chess with this\ncaptivating and visually stunning Flutter-based chess game.\nTest your tactical prowess, challenge friends, and experience the thrill of victory!",
              "Give it a try↗",
              'https://chess-eb267.web.app/#/'),
          const SizedBox(
            height: 80,
          ),
          const Divider(
            color: MyColors.orange,
            thickness: 1,
            height: 5,
            indent: 170,
            endIndent: 170,
          ),
          Projects(
              "03 / Chess",
              "Unleash Your Strategic Skills with Flutter Chess Game",
              "Immerse yourself in the world of chess with this\ncaptivating and visually stunning Flutter-based chess game.\nTest your tactical prowess, challenge friends, and experience the thrill of victory!",
              "Give it a try↗",
              'https://chess-eb267.web.app/#/'),
          const SizedBox(
            height: 80,
          ),
          const Divider(
            color: MyColors.orange,
            thickness: 1,
            height: 5,
            indent: 170,
            endIndent: 170,
          ),
          Projects(
              "03 / Chess",
              "Unleash Your Strategic Skills with Flutter Chess Game",
              "Immerse yourself in the world of chess with this\ncaptivating and visually stunning Flutter-based chess game.\nTest your tactical prowess, challenge friends, and experience the thrill of victory!",
              "Give it a try↗",
              'https://chess-eb267.web.app/#/'),
        ],
      ),
    );
  }
}

Widget Projects(ProjectName, Heading, SubHeading, moreText, url) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 90),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ProjectName,
                  style: MyFonts.manrope(
                    fontSize: 18,
                    color: MyColors.orange,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  Heading,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: MyFonts.manrope(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  SubHeading,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: MyFonts.manrope(
                    fontSize: 14,
                    color: MyColors.lightGrey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 100),
                GestureDetector(
                  onTap: () async {
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Text(
                    moreText,
                    style: MyFonts.manrope(
                      fontSize: 18,
                      color: MyColors.orange,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        // Flexible(
        //   flex: 1,
        //   child: AspectRatio(
        //     aspectRatio: 2,
        //     child: Image.asset(
        //       "assets/images/chess.jpg",
        //       fit: BoxFit.fitHeight,
        //     ),
        //   ),
        // ),
      ],
    ),
  );
}
