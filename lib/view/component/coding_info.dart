import 'package:fire_folio/constants.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'animated_linear_progress_indicator.dart';

class CodingInfo extends StatelessWidget {
  const CodingInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        "Coding".text.subtitle1(context).make().py(defaultPadding),
        const AnimatedLinearProgressIndicator(
          text: "Dart",
          percentage: 0.55,
        ),
        const AnimatedLinearProgressIndicator(
          text: "Java",
          percentage: 0.65,
        ),
        const AnimatedLinearProgressIndicator(
          text: "Python",
          percentage: 0.8,
        ),
      ],
    );
  }
}
