import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:food_delivery_application/navscreens/home.dart';
import 'package:food_delivery_application/navscreens/more.dart';
import 'package:food_delivery_application/navscreens/shop.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List screens = [
    Home(),
    Shop(),
    More(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
     
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Theme.of(context).primaryColor,
          // selectedIconTheme:
          // IconThemeData(color: Theme.of(context).primaryColor),
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          onTap: onTap,
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
                label: "Home",
                icon: Icon(IconlyLight.home),
                activeIcon: Icon(IconlyBold.home)),
            BottomNavigationBarItem(
                label: "Shop",
                icon: Icon(
                  IconlyLight.bag,
                ),
                activeIcon: Icon(IconlyBold.bag)),
            BottomNavigationBarItem(
                label: "More",
                icon: Icon(IconlyLight.moreCircle),
                activeIcon: Icon(IconlyBold.moreCircle)),
          ]),
    );
  }
}
