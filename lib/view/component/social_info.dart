import 'package:fire_folio/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialInfo extends StatelessWidget {
  const SocialInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        (defaultPadding / 2).heightBox,
        TextButton(
          onPressed: () {},
          child: FittedBox(
            child: Row(
              children: [
                "DOWNLOAD CV"
                    .text
                    .color(context.textTheme.bodyText1!.color!)
                    .make(),
                (defaultPadding / 2).widthBox,
                SvgPicture.asset("assets/icons/download.svg")
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: defaultPadding),
          color: socialBarColor,
          child: Row(
            children: [
              const Spacer(),
              IconButton(
                onPressed: () async => await launch("https://www.linkedin.com/in/abhi-shake-9765a21b4/"),
                icon: SvgPicture.asset(
                  "assets/icons/linkedin.svg",
                ),
              ),
              IconButton(
                onPressed: () async => await launch("https://www.github.com/AbhiShake1"),
                icon: SvgPicture.asset(
                  "assets/icons/github.svg",
                ),
              ),
              IconButton(
                onPressed: () async => await launch("https://twitter.com"),
                icon: SvgPicture.asset(
                  "assets/icons/twitter.svg",
                ),
              ),
              const Spacer()
            ],
          ),
        )
      ],
    );
  }
}
