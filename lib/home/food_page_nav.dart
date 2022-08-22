import 'package:flutter/material.dart';
import '../Components/big_text.dart';
import '../Components/small_text.dart';

class FoodPageNav extends StatefulWidget {
  const FoodPageNav({Key? key}) : super(key: key);

  @override
  State<FoodPageNav> createState() => _FoodPageNavState();
}

class _FoodPageNavState extends State<FoodPageNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.only(top: 35, bottom: 15),
        padding: EdgeInsets.only(left: 20, right: 20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            children: [
              BigText(
                text: "Country",
                size: 20,
                color: Colors.blue,
              ),
              Row(
                children: [
                  SmallText(
                    text: "City",
                    size: 15,
                    color: Colors.black54,
                    height: 1.2,
                  ),
                  Icon(Icons.arrow_drop_down)
                ],
              )
            ],
          ),
          Center(
              child: Container(
            width: 45,
            height: 45,
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.red,
            ),
          ))
        ]),
      ),
    );
  }
}
