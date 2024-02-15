import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/widgets/adaptive_layout_widget.dart';
import 'widgets/custom_drawer/custom_drawer.dart';
import 'widgets/desk_top_layout.dart';
import 'widgets/mobile_layout.dart';
import 'widgets/tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: size.width < 800 ? buildAppBar() : null,
      drawer: size.width < 800 ? const CustomDrawer() : null,
      backgroundColor: AppColors.backgroundColor,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DeskTopLayout(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.skyBlue,
      leading: IconButton(
        onPressed: () {
          scaffoldKey.currentState!.openDrawer();
        },
        icon: const Icon(
          Icons.menu,
          color: AppColors.white,
        ),
      ),
    );
  }
}
