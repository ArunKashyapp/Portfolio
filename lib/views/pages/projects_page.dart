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
      height: ScreenSize.screenHeight * 0.10 + 1500,
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
    padding: const EdgeInsets.only(left: 160, top: 100, right: 160),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ProjectName,
              style: MyFonts.manrope(
                  fontSize: 18,
                  color: MyColors.orange,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              Heading,
              overflow: TextOverflow.ellipsis,
              style: MyFonts.manrope(
                  fontSize: 18,
                  color: MyColors.lightGrey,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 33,
            ),
            Text(
              SubHeading,
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
              style: MyFonts.manrope(
                  fontSize: 14,
                  color: MyColors.lighterGrey,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 134,
            ),
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
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
        const SizedBox(
          width: 200,
        ),
        Flexible(
          flex: 1,
          child: AspectRatio(
            aspectRatio:
                2, // Adjust this value as per your image's aspect ratio
            child: Image.asset(
              "assets/images/chess.jpg",
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ],
    ),
  );
}
