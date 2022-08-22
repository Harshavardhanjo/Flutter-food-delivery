import 'package:flutter/material.dart';
import 'package:food_app/Components/big_text.dart';
import 'package:food_app/Components/small_text.dart';
import 'package:food_app/home/food_page_body.dart';
import 'package:food_app/home/food_page_nav.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        FoodPageNav(),
        FoodPageBody(),
      ],
    ));
  }
}
