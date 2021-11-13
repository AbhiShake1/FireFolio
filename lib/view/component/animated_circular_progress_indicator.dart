import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  final double percentage;
  final String label;

  const AnimatedCircularProgressIndicator(
      {Key? key, required this.percentage, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TweenAnimationBuilder(
          tween: Tween<double>(
            begin: 0,
            end: percentage,
          ),
          duration: defaultDuration,
          builder: (context, double value, child) => Stack(
            fit: StackFit.expand,
            children: [
              CircularProgressIndicator(
                value: value,
                color: primaryColor,
                backgroundColor: darkColor,
              ),
              ((value * 100).round().toString() + "%")
                  .text
                  .subtitle1(context)
                  .makeCentered()
            ],
          ),
        ).aspectRatio(1),
        (defaultPadding / 2).heightBox,
        label.text.subtitle2(context).maxLines(1).ellipsis.make()
      ],
    );
  }
}
