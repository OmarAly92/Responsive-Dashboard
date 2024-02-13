import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, this.isActive = false});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 32 : 8,
      height: 8,
      margin: const EdgeInsets.only(right: 6),
      decoration: BoxDecoration(
        color: isActive ? AppColors.skyBlue : AppColors.lightGreyDotIndicatorColor,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
