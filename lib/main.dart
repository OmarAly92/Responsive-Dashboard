import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/routes/app_routes.dart';

import 'core/utils/size_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
