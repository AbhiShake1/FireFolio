import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../constants.dart';
import 'animated_circular_progress_indicator.dart';

class SkillsInfo extends StatelessWidget {
  const SkillsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        "Skills".text.subtitle1(context).make().p(defaultPadding),
        Row(
          children: [
            defaultPadding.widthBox,
            const AnimatedCircularProgressIndicator(
              percentage: 0.63,
              label: "Flutter",
            ).expand(),
            defaultPadding.widthBox,
            const AnimatedCircularProgressIndicator(
              percentage: 0.72,
              label: "Django",
            ).expand(),
            defaultPadding.widthBox,
            const AnimatedCircularProgressIndicator(
              percentage: 0.81,
              label: "SQL",
            ).expand(),
            defaultPadding.widthBox,
          ],
        )
      ],
    );
  }
}
