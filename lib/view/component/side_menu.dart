import 'package:fire_folio/constants.dart';
import 'package:fire_folio/view/component/knowledge_info.dart';
import 'package:fire_folio/view/component/skills_info.dart';
import 'package:fire_folio/view/component/social_info.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'coding_info.dart';
import 'dev_info.dart';
import 'dev_info_text.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DevInfo(),
          SingleChildScrollView(
            child: Column(
              children: [
                const DevInfoText(
                  title: "Residence",
                  text: "Nepal",
                ),
                const DevInfoText(
                  title: "City",
                  text: "Kathmandu",
                ),
                DevInfoText(
                  title: "Age",
                  text: (DateTime(DateTime.now().year)
                              .difference(DateTime(2001))
                              .inDays /
                          365)
                      .round()
                      .toString(),
                ),
                const SkillsInfo(),
                const CodingInfo(),
                const KnowledgeInfo(),
                const SocialInfo(),
              ],
            ),
          ).p(defaultPadding).expand()
        ],
      ),
    ).expand(flex: 2 // 2/9 = 22% width
        );
  }
}
