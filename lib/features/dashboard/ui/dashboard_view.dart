import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_colors.dart';
import 'package:responsive_dashboard/core/widgets/adaptive_layout_widget.dart';

import 'widgets/desk_top_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: AdaptiveLayoutWidget(
        desktopLayout: (context) => const DeskTopLayout(),
      ),
    );
  }
}
