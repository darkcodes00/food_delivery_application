// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:food_delivery_application/food.dart';
import 'package:food_delivery_application/widgets/apptext.dart';
import 'package:food_delivery_application/widgets/maintext.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  String dropdownvalue = "Nevada, US";
  var items = [
    "Nevada, US",
    "New York, US",
    "Boston, US",
    "Chicago, US",
    "Detroit, US"
  ];
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Icon(
                      IconlyBold.location,
                      color: Theme.of(context).primaryColor,
                      size: 24,
                    ),
                    const SizedBox(width: 5),
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          value: dropdownvalue,
                          icon: Icon(
                            IconlyLight.arrowDown2,
                            color: Theme.of(context).primaryColor,
                            size: 16,
                          ),
                          items: items
                              .map((String items) => DropdownMenuItem(
                                    child: Text(
                                      items,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                    value: items,
                                  ))
                              .toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(left: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 230,
                      child: MainText(
                          text: "Order Your Food Fast and Free",
                          color: Colors.black),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Image.asset("assets/img/Flat.png"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 48,
                    width: 263,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xffE6E6E6),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Color(0xffcccccc),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        prefixIcon: Icon(
                          IconlyLight.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(IconlyLight.filter,
                        color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MainText(
                    text: "Categories",
                    color: Colors.black,
                    size: 18,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 40,
                      child: TabBar(
                        isScrollable: true,
                        controller: _tabController,
                        // labelPadding: const EdgeInsets.only(left: 12),
                        indicator: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        tabs: [
                          Tab(
                            child: Container(
                              // alignment: Alignment.center,
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Theme.of(context).primaryColor),
                              ),
                              child: Row(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/img/burgericon.png"),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text(
                                    "Burger",
                                  )
                                ],
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Theme.of(context).primaryColor),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/img/pizza.png",
                                    height: 24,
                                    width: 24,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text(
                                    "Pizza",
                                  )
                                ],
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Theme.of(context).primaryColor),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/img/hotdogicon.png"),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text(
                                    "Sandwich",
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  // decoration: BoxDecoration(color: Colors.red),
                  height: 210,
                  width: double.maxFinite,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      GridView(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          mainAxisExtent: 207,
                          childAspectRatio: 1,
                        ),
                        children: [
                          InkWell(
                            onTap: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Food(),
                            )),
                            child: Card(
                              child: Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Image.asset("assets/img/star.png"),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          AppText(
                                            text: "4.8",
                                            size: 12,
                                            color: Colors.black,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 76,
                                      width: 131,
                                      child: Image.asset(
                                        "assets/img/burger.png",
                                        width: 87,
                                        height: 70,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                      height: 23,
                                      width: double.infinity,
                                      child: MainText(
                                        text: "Chicken Burger",
                                        color: Colors.black,
                                        size: 18,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      height: 32,
                                      width: double.infinity,
                                      child: AppText(
                                        text:
                                            "200 gr chicken + cheese  Lettuce + tomato",
                                        color: Colors.black,
                                        size: 12,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      height: 22,
                                      child: Row(
                                        children: [
                                          AppText(
                                            text: "\$ 22.00",
                                            size: 14,
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          const Spacer(),
                                          Image.asset(
                                            "assets/img/plus.png",
                                            height: 22,
                                            width: 22,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Food(),
                            )),
                            child: Card(
                              child: Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Image.asset("assets/img/star.png"),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          AppText(
                                            text: "4.8",
                                            size: 12,
                                            color: Colors.black,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 76,
                                      width: 131,
                                      child: Image.asset(
                                        "assets/img/burger.png",
                                        width: 87,
                                        height: 70,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                      height: 23,
                                      width: double.infinity,
                                      child: MainText(
                                        text: "Chicken Burger",
                                        color: Colors.black,
                                        size: 18,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      height: 32,
                                      width: double.infinity,
                                      child: AppText(
                                        text:
                                            "200 gr chicken + cheese  Lettuce + tomato",
                                        color: Colors.black,
                                        size: 12,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      height: 22,
                                      child: Row(
                                        children: [
                                          AppText(
                                            text: "\$ 22.00",
                                            size: 14,
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          const Spacer(),
                                          Image.asset(
                                            "assets/img/plus.png",
                                            height: 22,
                                            width: 22,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Food(),
                            )),
                            child: Card(
                              child: Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Image.asset("assets/img/star.png"),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          AppText(
                                            text: "4.8",
                                            size: 12,
                                            color: Colors.black,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 76,
                                      width: 131,
                                      child: Image.asset(
                                        "assets/img/burger.png",
                                        width: 87,
                                        height: 70,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                      height: 23,
                                      width: double.infinity,
                                      child: MainText(
                                        text: "Chicken Burger",
                                        color: Colors.black,
                                        size: 18,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      height: 32,
                                      width: double.infinity,
                                      child: AppText(
                                        text:
                                            "200 gr chicken + cheese  Lettuce + tomato",
                                        color: Colors.black,
                                        size: 12,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      height: 22,
                                      child: Row(
                                        children: [
                                          AppText(
                                            text: "\$ 22.00",
                                            size: 14,
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          const Spacer(),
                                          Image.asset(
                                            "assets/img/plus.png",
                                            height: 22,
                                            width: 22,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Food(),
                            )),
                            child: Card(
                              child: Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Image.asset("assets/img/star.png"),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          AppText(
                                            text: "4.8",
                                            size: 12,
                                            color: Colors.black,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 76,
                                      width: 131,
                                      child: Image.asset(
                                        "assets/img/burger.png",
                                        width: 87,
                                        height: 70,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                      height: 23,
                                      width: double.infinity,
                                      child: MainText(
                                        text: "Chicken Burger",
                                        color: Colors.black,
                                        size: 18,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      height: 32,
                                      width: double.infinity,
                                      child: AppText(
                                        text:
                                            "200 gr chicken + cheese  Lettuce + tomato",
                                        color: Colors.black,
                                        size: 12,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      height: 22,
                                      child: Row(
                                        children: [
                                          AppText(
                                            text: "\$ 22.00",
                                            size: 14,
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          const Spacer(),
                                          Image.asset(
                                            "assets/img/plus.png",
                                            height: 22,
                                            width: 22,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Text("Pizza"),
                      const Text("Sandwich"),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
