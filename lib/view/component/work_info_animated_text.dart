import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WorkInfoAnimatedText extends StatelessWidget {
  const WorkInfoAnimatedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: context.textTheme.subtitle1!,
      child: Row(
        children: [
          "I ".text.make(),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText("build responsive cross platform apps.",
                  speed: const Duration(milliseconds: 40)),
              TyperAnimatedText("build machine learning models.",
                  speed: const Duration(milliseconds: 40)),
              TyperAnimatedText("reverse engineer stuffs.",
                  speed: const Duration(milliseconds: 40)),
            ],
            repeatForever: true,
          ),
        ],
      ),
    );
  }
}
