import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/routes/app_routes.dart';

import 'core/utils/size_config.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) {
        return const MyApp();
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MaterialApp(
      ///=======DevicePreview settings=======
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      ///=======DevicePreview settings=======

      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
