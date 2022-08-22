import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Components/small_text.dart';

class IconText extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color? color;
  IconText({required this.iconData, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: color,
        ),
        SizedBox(
          width: 3,
        ),
        SmallText(text: text, size: 12)
      ],
    );
  }
}
