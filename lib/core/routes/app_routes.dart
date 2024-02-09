import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/dashboard/ui/dashboard_view.dart';

import 'routes_constant.dart';

class AppRoutes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const DashboardView();
          },
        );
    }
    return null;
  }
}
