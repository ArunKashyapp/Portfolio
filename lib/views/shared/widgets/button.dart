import 'package:flutter/material.dart';
import 'package:portfolio/views/styles/colors.dart';
import 'package:portfolio/views/styles/fonts.dart';

// ignore: must_be_immutable

class TexButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  TexButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed as void Function()?,
      child: Container(
        child: Text(
          title,
          style: MyFonts.manrope(
              color: MyColors.lightGrey,
              fontSize: 15,
              fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
