import 'package:fire_folio/view/component/home_banner.dart';
import 'package:fire_folio/view/screen/main/main_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(children: [
      HomeBanner(),

    ]);
  }
}
