import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/animations/animations.dart';
import 'package:portfolio/views/shared/widgets/button.dart';
import 'package:portfolio/views/styles/colors.dart';
import 'package:portfolio/views/styles/constants.dart';
import 'package:portfolio/views/styles/fonts.dart';

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
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 90, top: 40),
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
                  width: ScreenSize.screenWidth * 0.5 - 200,
                  child: TextFormField(
                    onTapOutside: (event) {
                      formcontroller.clear();
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
