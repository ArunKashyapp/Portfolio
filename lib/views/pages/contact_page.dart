import 'package:flutter/cupertino.dart';
import 'package:portfolio/animations/animations.dart';
import 'package:portfolio/views/styles/colors.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              HoverText(
                text: "Let's Connect",
                size: 40,
                color: MyColors.lightGrey,
                weight: FontWeight.w100,
              )
            ],
          )
        ],
      ),
    );
  }
}
