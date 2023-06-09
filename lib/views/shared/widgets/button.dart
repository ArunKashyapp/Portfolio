import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../styles/fonts.dart';

class TexButton extends StatefulWidget {
  final String title;
  final Function onPressed;
  final Icon icon;

  TexButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  State<TexButton> createState() => _TexButtonState();
}

class _TexButtonState extends State<TexButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all<Color?>(
          Colors.transparent,
        ),
      ),
      onPressed: widget.onPressed as void Function()?,
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (_) {
          setState(() {
            isHovered = false;
          });
        },
        child: Container(
          margin: EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: isHovered
              ? widget.icon
              : Text(
                  widget.title,
                  style: MyFonts.manrope(
                    color: MyColors.lightGrey,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
        ),
      ),
    );
  }
}
