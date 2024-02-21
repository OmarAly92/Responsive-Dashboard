import 'package:flutter/material.dart';

import '../models/limit_font_size_model.dart';
import 'size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: const Color(0xff064060),
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
      color: const Color(0xff064060),
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
      color: const Color(0xffFFFFFF),
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xff064060),
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xffFFFFFF),
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xff064060),
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xff4EB7F2),
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
      fontFamily: 'Montserrat',
      color: const Color(0xff4EB7F2),
    );
  }

  static double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
    final double scaleFactor = getScaleFactor(context);
    final double responsiveFontSize = fontSize * scaleFactor;
    final limits = getLimits(context);

    final double lowerLimit = fontSize * limits.lowerLimit;
    final double upperLimit = fontSize * limits.upperLimit;

    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static double getScaleFactor(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    if (width < SizeConfig.tablet) {
      return width / 550;
    } else if (width < SizeConfig.desktop) {
      return width / 800;
    } else {
      return width / 1650;
    }
  }

  static LimitFontSizeModel getLimits(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    if (width < SizeConfig.tablet) {
      return const LimitFontSizeModel(lowerLimit: 0.8, upperLimit: 1.0);
    } else if (width < SizeConfig.desktop) {
      return const LimitFontSizeModel(lowerLimit: 0.8, upperLimit: 1.0);
    } else {
      return const LimitFontSizeModel(lowerLimit: 0.9, upperLimit: 1.6);
    }
  }
}
