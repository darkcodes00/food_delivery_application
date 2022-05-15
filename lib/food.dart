// import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:food_delivery_application/intro.dart';
import 'package:food_delivery_application/widgets/apptext.dart';
import 'package:food_delivery_application/widgets/button.dart';
import 'package:food_delivery_application/widgets/maintext.dart';

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);

  @override
  State<Food> createState() => _FoodState();
}

List images = [
  "assets/img/largeburger.png",
  "assets/img/largeburger.png",
  "assets/img/largeburger.png",
  "assets/img/largeburger.png",
  "assets/img/largeburger.png",
];

class _FoodState extends State<Food> {
  int activeIndex = 0;

  setActiveDot(index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffFFF1E5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 306,
                  width: double.infinity,
                  child: CarouselSlider.builder(
                    itemCount: images.length,
                    itemBuilder: (BuildContext context, int itemIndex, _) =>
                        Image.asset(
                      images[itemIndex],
                      width: double.infinity,
                    ),
                    options: CarouselOptions(
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setActiveDot(index);
                      },
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 25, left: 15, right: 15),
                  child: Row(children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(IconlyLight.arrowLeft2),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(IconlyLight.heart),
                    )
                  ]),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      images.length,
                      (idx) {
                        return activeIndex == idx ? ActiveDot() : InactiveDot();
                      },
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(24),
                  height: 506,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 31,
                        child: Row(
                          children: [
                            MainText(
                              text: "Chicken Burger",
                              color: Colors.black,
                              size: 24,
                            ),
                            const Spacer(),
                            Image.asset(
                              "assets/img/star.png",
                              height: 24,
                              width: 24,
                            ),
                            AppText(text: "4.8", size: 18, color: Colors.black),
                            AppText(
                              text: "(41 Reviews)",
                              size: 12,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        child: Row(
                          children: [
                            AppText(
                              text: "\$ 22.00",
                              size: 18,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                            const Spacer(),
                            Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Color(0xffFFF1E5),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              width: 100,
                              height: 40,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset(
                                    "assets/img/minus.png",
                                  ),
                                  const Spacer(),
                                  AppText(
                                    text: "1",
                                    size: 24,
                                    color: Colors.black,
                                  ),
                                  const Spacer(),
                                  Image.asset(
                                    "assets/img/plust.png",
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Container(
                        height: 65,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              height: 65,
                              width: 93,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: Theme.of(context).primaryColor),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // padding: EdgeInsets.all(8),
                                    child: Row(
                                      children: [
                                        AppText(
                                          text: "Size",
                                          size: 14,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        const Spacer(),
                                        Icon(
                                          IconlyLight.arrowDown2,
                                          size: 16,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  AppText(
                                    text: "Medium",
                                    size: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  )
                                ],
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: EdgeInsets.all(8),
                              height: 65,
                              width: 93,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: Theme.of(context).primaryColor),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // padding: EdgeInsets.all(8),
                                    child: Column(
                                      children: [
                                        AppText(
                                          text: "Energy",
                                          size: 14,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  AppText(
                                    text: "554 KCal",
                                    size: 18,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: EdgeInsets.all(8),
                              height: 65,
                              width: 93,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: Theme.of(context).primaryColor),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // padding: EdgeInsets.all(8),
                                    child: Column(
                                      children: [
                                        AppText(
                                          text: "Delivery",
                                          size: 14,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  AppText(
                                    text: "45 min",
                                    size: 18,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Container(
                        height: 100,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                                text: "About", size: 18, color: Colors.black),
                            const Spacer(),
                            AppText(
                                text:
                                    "Crispy seasoned chicken breast, topped with mandatory melted cheese and piled onto soft rolls with onion, avocado, lettuce, tomato and garlic mayo (if ordered). ",
                                size: 14,
                                color: Colors.black)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Button(
                        btnName: "Add to Cart",
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Intro(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ActiveDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 16,
        height: 16,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

class InactiveDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
