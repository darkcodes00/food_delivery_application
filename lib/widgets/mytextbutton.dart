// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  String buttonText;
  double? textSize;
  Color? textColor;
  final Function onTap;
  MyTextButton(
      {Key? key,
      required this.buttonText,
      required this.textSize,
      required this.textColor,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onTap(),
      child: Text(
        buttonText,
        style: TextStyle(color: textColor, fontSize: textSize),
      ),
    );
  }
}
