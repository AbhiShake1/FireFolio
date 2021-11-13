import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constants.dart';

class DevInfoText extends StatelessWidget {
  final String title, text;

  const DevInfoText({Key? key, required this.title, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        title.text.white.make(),
        text.text.make(),
      ],
    ).pOnly(bottom: defaultPadding / 2);
  }
}
