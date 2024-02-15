import 'package:flutter/material.dart';

import '../../../../../../core/custom_drop_down.dart/custom_drop_down.dart';
import '../../../../../../core/utils/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20,
        ),
        CustomDropDown(),
      ],
    );
  }
}
