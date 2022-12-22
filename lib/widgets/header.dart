import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_flutter/theme/coolors.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///name
    var name = "Kharold\nCanova"
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make();

    return SafeArea(
      child: VxBox(
              child: VStack([
        ZStack([
          const PictureWidget(),
          Row(
            children: [
              VStack([
                if (context.isMobile) 50.heightBox else 10.heightBox,
                const CustomAppBar(),
                30.heightBox,
                name,
                30.heightBox,
                VxBox().color(Coolors.accentColor).size(60, 10).make(),
                30.heightBox,
                const SocialAccounts()
              ]).pSymmetric(
                h: context.percentWidth * 10,
                v: 32,
              ),
              Expanded(
                  child: VxResponsive(
                fallback: const Offstage(),
                medium: const IntroductionWidget()
                    .pOnly(left: 120)
                    .h(context.percentHeight * 60),
                large: const IntroductionWidget()
                    .pOnly(left: 120)
                    .h(context.percentHeight * 60),
              )),
            ],
          ).w(context.screenWidth)
        ]),
      ]))
          .size(context.screenWidth, context.percentHeight * 60)
          .color(Coolors.secondaryColor)
          .make(),
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform(
      origin: Offset(context.percentWidth * 2, 0),
      alignment: Alignment.bottomCenter,
      transform: Matrix4.rotationY(pi),

      ///change image to oher
      child: Image.asset(
        "assets/imageHome.png",
        fit: BoxFit.cover,
        height: context.percentHeight * 60,
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.menu,
      size: 32,
      color: Coolors.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return [
      const FaIcon(FontAwesomeIcons.instagram, color: Colors.white)
          .mdClick(
            () {},
          )
          .make(),
      20.widthBox,
      const FaIcon(FontAwesomeIcons.facebook, color: Colors.white)
          .mdClick(
            () {},
          )
          .make(),
      20.widthBox,
      const FaIcon(FontAwesomeIcons.linkedin, color: Colors.white)
          .mdClick(
            () {},
          )
          .make(),
      20.widthBox,
      const FaIcon(FontAwesomeIcons.github, color: Colors.white)
          .mdClick(
            () {},
          )
          .make(),
    ].hStack();
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        20.heightBox,
        [
          " - Introduction".text.gray500.widest.sm.make(),
          20.heightBox,
          "Desarrollador de Flutter, Firebase, Dart.\nCurioso de conocer las tecnologias del futuro"
              .text
              .white
              .xl2
              .maxLines(5)
              .make()
              .w(
                context.isMobile
                    ? context.screenWidth
                    : context.percentWidth * 40,
              ),
          20.heightBox,
        ].vStack(),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              shape: MaterialStateProperty.all(
                const StadiumBorder(),
              ),
              backgroundColor: MaterialStateProperty.all(
                Coolors.accentColor,
              )),
          child: "Visitame aqui:".text.make(),
        ).h(50),
        30.heightBox
      ],
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}
