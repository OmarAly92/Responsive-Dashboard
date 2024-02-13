import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_styles.dart';
import '../../../../models/income_item_model.dart';

class IncomeDetailItem extends StatelessWidget {
  const IncomeDetailItem({super.key, required this.itemDetailsModel});

  final IncomeItemModel itemDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16,
      ),
    );
  }
}
