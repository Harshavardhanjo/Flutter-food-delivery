import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Components/big_text.dart';
import 'package:food_app/Components/icon_text.dart';
import 'package:food_app/Components/small_text.dart';
import 'package:food_app/home/icon_layout.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.9);
  var _currpagevalue = 0.0;
  double _scaleFactor = 0.8;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currpagevalue = pageController.page!;
        print(_currpagevalue.toString());
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 320,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currpagevalue.floor()) {
      var currScale = 1 - (_currpagevalue - index) * (1 - _scaleFactor);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
    } else if (index == _currpagevalue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currpagevalue - index + 1) * (1 - _scaleFactor);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: 220,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven ? Colors.blueAccent : Colors.orange,
              image: DecorationImage(
                  image: AssetImage("assets/images/test.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 130,
              margin: EdgeInsets.only(left: 40, right: 40, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Container(
                // decoration: BoxDecoration(boxShadow: BoxShadow.lerpList(a, b, t)),
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(text: "Joker Wings", size: 20),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(
                                5,
                                (index) => Icon(
                                      Icons.star,
                                      color: Colors.green,
                                      size: 15,
                                    )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SmallText(text: "4.5", size: 13),
                          SizedBox(
                            width: 15,
                          ),
                          SmallText(text: "1287 Comments", size: 12)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      IconLayout(),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
