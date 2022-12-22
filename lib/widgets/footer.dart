import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_flutter/theme/coolors.dart';
import 'package:resume_flutter/widgets/header.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
          mobile: VStack(
            [
              "¿Tienes algun proyecto?\nContactame"
                  .text
                  .center
                  .white
                  .xl2
                  .make(),
              10.heightBox,
              "kharoldsamirl@gmail.com"
                  .text
                  .color(Coolors.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolors.accentColor)
                  .p16
                  .rounded
                  .make()
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack(
            [
              "¿Tienes algun proyecto?\nContactame"
                  .text
                  .center
                  .white
                  .xl2
                  .make(),
              10.widthBox,
              "kharoldsamirl@gmail.com"
                  .text
                  .color(Coolors.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolors.accentColor)
                  .p16
                  .rounded
                  .make(),
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth * 70).scale150().p16(),
        ),
        50.heightBox,
        "Gracias por visitarnos, ".richText.semiBold.white.withTextSpanChildren(
            ["eso es todo.".textSpan.gray500.make()]).make(),
        10.heightBox,
        const SocialAccounts(),
        30.heightBox,
        [
          "Hecho en Peru".text.purple500.make(),
          10.widthBox,
          const Icon(
            FontAwesomeIcons.heart,
            color: Vx.purple500,
            size: 14,
          )
        ].hStack(crossAlignment: CrossAxisAlignment.center)
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
