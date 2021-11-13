import 'package:flutter/material.dart';

import '../../constants.dart';
import 'package:velocity_x/velocity_x.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  final String text;
  final double percentage;

  const AnimatedLinearProgressIndicator(
      {Key? key, required this.text, required this.percentage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: percentage),
      duration: defaultDuration,
      builder: (context, double value, child) => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              text.text.white.subtitle2(context).make(),
              ((value * 100).round().toString() + "%")
                  .text
                  .subtitle2(context)
                  .make()
            ],
          ),
          (defaultPadding / 2).heightBox,
          LinearProgressIndicator(
            value: value,
            color: primaryColor,
            backgroundColor: darkColor,
          ),
        ],
      ),
    ).pOnly(bottom: defaultPadding);
  }
}
