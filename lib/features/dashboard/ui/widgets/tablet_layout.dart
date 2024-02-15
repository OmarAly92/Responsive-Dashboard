import 'package:flutter/material.dart';

import 'desktop_layout/custom_drawer/custom_drawer.dart';
import 'mobile_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: MobileLayout(),
        ),
      ],
    );
  }
}
