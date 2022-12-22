import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MiddleScreen extends StatelessWidget {
  const MiddleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.purple700,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          "Todos mis trabajos creativos.\n"
              .richText
              .withTextSpanChildren(
                ["Selecciona Proyectos.".textSpan.yellow400.make()],
              )
              .xl2
              .white
              .make(),
          20.heightBox,
          Expanded(
              child: VxSwiper(
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            items: const [
              ProjectWidget(title: "Frontier Wallet"),
              ProjectWidget(title: "Chatbot"),
              ProjectWidget(title: "CRM"),
              ProjectWidget(title: "Basic")
            ],
            height: 170,
            viewportFraction: context.isMobile ? 0.75 : 0.2,
            autoPlay: true,
            autoPlayAnimationDuration: 1.seconds,
          ))
        ],
      ).p64().h(context.isMobile ? 500 : 300),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  //title project
  final String title;
  const ProjectWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return title.text.bold.white.xl.wide.center
        .make()
        .box
        .p8
        .roundedLg
        .neumorphic(color: Vx.purple700, elevation: 5, curve: VxCurve.flat)
        .alignCenter
        .square(200)
        .make()
        .p16();
  }
}
