import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/utils/app_styles.dart';
import '../../../../../../../core/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({
    super.key,
    required this.title,
    required this.hintText,
  });

  final String title;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16,
        ),
        const Gap(5),
        CustomTextField(
          hintText: hintText,
        ),
      ],
    );
  }
}
