import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../Components/icon_text.dart';

class IconLayout extends StatelessWidget {
  const IconLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconText(
          iconData: Icons.circle,
          text: "Moderate",
          color: Colors.orange,
        ),
        IconText(
          iconData: Icons.place,
          text: "Chennai",
          color: Colors.blue,
        ),
        IconText(
          iconData: Icons.time_to_leave,
          text: "50mins",
          color: Colors.orange,
        ),
      ],
    );
  }
}
