import 'package:fire_folio/constants.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'knowledge_info_text.dart';

class KnowledgeInfo extends StatelessWidget {
  const KnowledgeInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Knowledge".text.subtitle2(context).make().py(defaultPadding),
          ],
        ),
        const KnowledgeInfoText(
          text: "Flutter, Dart",
        ),
        const KnowledgeInfoText(
          text: "Django, Python",
        ),
        const KnowledgeInfoText(
          text: "JavaFX, Java",
        ),
      ],
    );
  }
}
