import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/core/custom_drop_down.dart/custom_drop_down.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        CustomDropDown(),
      ],
    );
  }
}
