import 'package:flutter/material.dart';
import 'package:food_delivery_application/intro.dart';

void main() {
  runApp(
    const FoodDeliveryApplication(),
  );
}

class FoodDeliveryApplication extends StatelessWidget {
  const FoodDeliveryApplication({
    Key? key,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // brightness: Brightness.light,
        primaryColor: const Color(0xffFF9431),
        colorScheme: const ColorScheme.light().copyWith(
          primary: const Color(0xffFF9431),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery Application',
      home: const Intro(),
    );
  }
}
