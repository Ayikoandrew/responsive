// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:responsive/landing_page/page_children.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: PageChildren.pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: PageChildren.pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
