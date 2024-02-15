import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/widgets/adaptive_layout_widget.dart';
import 'widgets/desk_top_layout.dart';
import 'widgets/tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: AdaptiveLayoutWidget(
        desktopLayout: (context) => const DeskTopLayout(),
        tabletLayout: (context) => const TabletLayout(),
      ),
    );
  }
}
