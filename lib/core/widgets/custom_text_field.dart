import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.skyBlue,
      style: AppStyles.styleRegular16,
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: AppColors.lightGrey,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        hintStyle: AppStyles.styleRegular16.copyWith(
          color: AppColors.lightGreyHintColor,
        ),
      ),
    );
  }
}
