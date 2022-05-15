// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:food_delivery_application/navscreens/home.dart';
import 'package:food_delivery_application/navscreens/main_screen.dart';
import 'package:food_delivery_application/widgets/apptext.dart';
import 'package:food_delivery_application/widgets/maintext.dart';
import 'package:food_delivery_application/widgets/mytextbutton.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            child: Image.asset(
              "assets/img/dish.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: height * 0.520,
            right: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 84,
                  width: 246,
                  child: MainText(
                    text: "Find and Get Your Best Food",
                    size: 36,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 48,
                  width: 327,
                  child: AppText(
                    text:
                        "Find the most delicious foodwith the best quality and free delivery here",
                    size: 16,
                    color: Colors.white,
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    child: Image.asset("assets/img/skip.png")),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    alignment: Alignment.center,
                    child: MyTextButton(
                      buttonText: "Skip",
                      textColor: Colors.white,
                      textSize: 18,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MainScreen(),
                        ));
                      },
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
