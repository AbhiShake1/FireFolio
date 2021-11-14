import 'package:fire_folio/view/component/work_info_animated_text.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          "assets/images/bg.jpeg",
          fit: BoxFit.cover,
        ),
        Container(
          color: darkColor.withOpacity(0.66),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            "Discover Brilliance!".text.headline3(context).bold.white.make(),
            const WorkInfoAnimatedText(),
            defaultPadding.heightBox,
            ElevatedButton(
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding * 2,
                    vertical: defaultPadding,
                  ),
                  backgroundColor: primaryColor),
              onPressed: () {},
              child: "EXPLORE NOW".text.color(darkColor).make(),
            )
          ],
        ).p(defaultPadding)
      ],
    ).aspectRatio(3);
  }
}
