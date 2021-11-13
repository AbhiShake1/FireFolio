import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../constants.dart';

class DevInfo extends StatelessWidget {
  const DevInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Spacer(flex: 2),
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
              "assets/images/IMG_7344.jpg",
            ),
          ),
          const Spacer(),
          "Abhi Shake".text.subtitle2(context).make(),
          "     Flutter Developer,\n     Reverse Engineer,\nData Science Enthusiast"
              .text
              .fontWeight(FontWeight.w200)
              .lineHeight(1.5)
              .makeCentered(),
          const Spacer(flex: 2),
        ],
      ),
    ).aspectRatio(1.23);
  }
}
