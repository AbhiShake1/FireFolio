import 'package:fire_folio/constants.dart';
import 'package:fire_folio/view/component/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints(maxWidth: maxWidth),
        child: Row(
          // 2+7=9.
          children: [
            const SideMenu(),
            Container()
                .backgroundColor(Colors.blue)
                .expand(flex: 7 // 7/9 = 78% width
                    ),
          ],
        ),
      ).centered(),
    );
  }
}