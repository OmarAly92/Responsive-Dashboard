import 'package:flutter/material.dart';

import 'size_config.dart';

abstract class AppStyles {
  static const TextStyle styleRegular12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
    color: Color(0xffAAAAAA),
  );

  static const TextStyle styleRegular14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
    color: Color(0xffAAAAAA),
  );

  static const TextStyle styleRegular16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
    color: Color(0xff064060),
  );

  static const TextStyle styleMedium16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: 'Montserrat',
    color: Color(0xff064060),
  );

  static const TextStyle styleMedium20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    fontFamily: 'Montserrat',
    color: Color(0xffFFFFFF),
  );

  static const TextStyle styleSemiBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
    color: Color(0xff064060),
  );
  static const TextStyle styleSemiBold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
    color: Color(0xffFFFFFF),
  );

  static const TextStyle styleSemiBold20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
    color: Color(0xff064060),
  );

  static const TextStyle styleSemiBold24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
    color: Color(0xff4EB7F2),
  );

  static const TextStyle styleBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontFamily: 'Montserrat',
    color: Color(0xff4EB7F2),
  );

  double getResponsiveFontSize(context, {required double fontSize}) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = fontSize * scaleFactor;

    double lowerLimit = fontSize * .8;
    double upperLimit = fontSize * 1.2;

    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  double getScaleFactor(context) {
    // var dispatcher = PlatformDispatcher.instance;
    // var physicalWidth = dispatcher.views.first.physicalSize.width;
    // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
    // double width = physicalWidth / devicePixelRatio;

    double width = MediaQuery.sizeOf(context).width;
    if (width < SizeConfig.tablet) {
      return width / 550;
    } else if (width < SizeConfig.desktop) {
      return width / 1000;
    } else {
      return width / 1920;
    }
  }
}
