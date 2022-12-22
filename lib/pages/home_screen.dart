import 'package:flutter/material.dart';
import 'package:resume_flutter/theme/coolors.dart';
import 'package:resume_flutter/widgets/footer.dart';
import 'package:resume_flutter/widgets/header.dart';
import 'package:resume_flutter/widgets/middle.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolors.primaryColor,
      child: VStack([
        const HeaderScreen(),
        if (context.isMobile) const IntroductionWidget().p16(),
        const MiddleScreen(),
        const FooterScreen()
      ]).scrollVertical(),
    );
  }
}
