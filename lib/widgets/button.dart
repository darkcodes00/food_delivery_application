import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String btnName;
  final Function onTap;
  const Button({
    Key? key,
    required this.btnName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).primaryColor,
        ),
        height: 61,
        width: double.infinity,
        child: Center(
          child: Text(
            btnName,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
