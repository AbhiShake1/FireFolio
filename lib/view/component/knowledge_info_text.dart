import 'package:fire_folio/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

class KnowledgeInfoText extends StatelessWidget {
  final String text;

  const KnowledgeInfoText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/icons/check.svg"),
        (defaultPadding / 2).widthBox,
        text.text.make()
      ],
    ).pOnly(bottom: defaultPadding / 2);
  }
}
