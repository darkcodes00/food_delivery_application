// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  MainText(
      {Key? key, required this.text, this.size = 30, this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
