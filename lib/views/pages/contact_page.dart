import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/animations/animations.dart';
import 'package:portfolio/views/shared/widgets/button.dart';
import 'package:portfolio/views/styles/colors.dart';
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

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key('Contact'),
      child: Padding(
        padding: const EdgeInsets.only(left: 90, top: 40, right: 90),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Let's Connect",
              style: MyFonts.manrope(
                  color: MyColors.orange,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
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
                        icon: const Icon(
                          Icons.play_arrow,
                          color: MyColors.orange,
                        )),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: MyColors.lightGrey)),
                    label: Text(
                      "Send a message",
                      style: MyFonts.manrope(
                          fontSize: 10, color: MyColors.lightGrey),
                    ),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: MyColors.white)),
                    prefixIcon: const Icon(
                      Icons.chat,
                      color: MyColors.lightGrey,
                    )),
                cursorColor: MyColors.lightGrey,
                maxLength: 200,
                style: MyFonts.manrope(fontSize: 15, color: MyColors.white),
              ),
            ),
            Text(
              "Social links",
              style: MyFonts.manrope(
                  color: MyColors.orange,
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 10,
            ),
            links(
                Logo(
                  Logos.linkedin,
                  size: 20,
                ),
                'https://www.linkedin.com/in/arunkashyapp/',
                "Linkedin",
                'https://www.linkedin.com/in/arunkashyapp/'),
            links(
                Logo(
                  Logos.github,
                  size: 20,
                  colorFilter: const ColorFilter.linearToSrgbGamma(),
                ),
                'https://github.com/ArunKashyapp',
                "Github",
                'https://github.com/ArunKashyapp'),
            links(
                Logo(
                  Logos.instagram,
                  size: 20,
                ),
                'https://github.com/ArunKashyapp',
                "Instagram",
                'https://github.com/ArunKashyapp'),
            const SizedBox(
              height: 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Wrap(
                  children: [
                    const Icon(
                      Icons.copyright,
                      color: MyColors.orange,
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

Widget links(logo, url, isttext, sectext) {
  return Wrap(
    children: [
      logo,
      AnimatedTextWidget(
          onpressed: () async {
            // ignore: deprecated_member_use
            if (await canLaunch(url)) {
              // ignore: deprecated_member_use
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
              decoration: TextDecoration.underline,
              fontSize: 15,
              color: MyColors.lightGrey,
              fontWeight: FontWeight.w200))
    ],
  );
}
