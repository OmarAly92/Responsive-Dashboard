import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_drop_down.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20(context),
        ),
        const CustomDropDown(),
      ],
    );
  }
}
