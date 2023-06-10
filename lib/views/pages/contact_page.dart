import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/animations/animations.dart';
import 'package:portfolio/views/shared/widgets/button.dart';
import 'package:portfolio/views/styles/colors.dart';
import 'package:portfolio/views/styles/constants.dart';
import 'package:portfolio/views/styles/fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  Contact({super.key});

  final TextEditingController formcontroller = TextEditingController();

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final TextEditingController formcontroller = TextEditingController();
  bool ishovered = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 90, top: 40, right: 90),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Let's Connect",
              style: MyFonts.manrope(
                  color: MyColors.lightGrey,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: ScreenSize.screenWidth,
              child: TextFormField(
                onTapOutside: (event) {
                  formcontroller.clear();
                  FocusScope.of(context).unfocus();
                },
                controller: formcontroller,
                decoration: InputDecoration(
                    suffix: TexButton(
                        title: 'Send',
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_arrow,
                          color: MyColors.lightGrey,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: MyColors.lightGrey)),
                    label: Text(
                      "Send a message",
                      style: MyFonts.manrope(
                          fontSize: 10, color: MyColors.lightGrey),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: MyColors.white)),
                    prefixIcon: Icon(
                      Icons.chat,
                      color: MyColors.lightGrey,
                    )),
                cursorColor: MyColors.lightGrey,
                maxLength: 200,
                style: MyFonts.manrope(fontSize: 15, color: MyColors.white),
              ),
            ),
            Text(
              "Social Links",
              style: MyFonts.manrope(
                  color: MyColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 10,
            ),
            Links(
                Logo(
                  Logos.linkedin,
                  size: 20,
                ),
                'https://www.linkedin.com/in/arunkashyapp/',
                "Linkedin",
                'https://www.linkedin.com/in/arunkashyapp/'),
            Links(
                Logo(
                  Logos.github,
                  size: 20,
                  colorFilter: ColorFilter.linearToSrgbGamma(),
                ),
                'https://github.com/ArunKashyapp',
                "Github",
                'https://github.com/ArunKashyapp'),
            Links(
                Logo(
                  Logos.instagram,
                  size: 20,
                ),
                'https://github.com/ArunKashyapp',
                "Instagram",
                'https://github.com/ArunKashyapp'),
            SizedBox(
              height: 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Wrap(
                  children: [
                    Icon(
                      Icons.copyright,
                      color: MyColors.lightGrey,
                      size: 17,
                    ),
                    Text(
                      "2023 ArunKashyap. All Rights Reserved.",
                      style: MyFonts.manrope(
                          fontSize: 12,
                          color: MyColors.lighterGrey,
                          fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
                Wrap(
                  children: [
                    Text(
                      "Made in Flutter",
                      style: MyFonts.manrope(
                          fontSize: 12,
                          color: MyColors.lighterGrey,
                          fontWeight: FontWeight.w200),
                    ),
                    Logo(
                      Logos.flutter,
                      size: 17,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget Links(logo, url, isttext, sectext) {
  return Wrap(
    children: [
      logo,
      AnimatedTextWidget(
          onpressed: () async {
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch ';
            }
          },
          texts: [
            isttext,
            sectext,
          ],
          textStyle: MyFonts.manrope(
              fontSize: 15,
              color: MyColors.lightGrey,
              fontWeight: FontWeight.w200))
    ],
  );
}
