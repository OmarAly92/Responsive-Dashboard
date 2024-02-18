import 'package:flutter/material.dart';

import '../../../../../../../core/utils/app_styles.dart';
import '../../../../models/custom_expenses_item_model.dart';

class ActiveExpensesItemBody extends StatelessWidget {
  const ActiveExpensesItemBody({
    super.key,
    required this.customExpensesItemModel,
  });

  final CustomExpensesItemModel customExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            customExpensesItemModel.title,
            style: AppStyles.styleSemiBold16(context).copyWith(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 8),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            customExpensesItemModel.date,
            style: AppStyles.styleRegular14(context).copyWith(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 16),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            customExpensesItemModel.price,
            style: AppStyles.styleSemiBold24(context).copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class InActiveExpensesItemBody extends StatelessWidget {
  const InActiveExpensesItemBody({
    super.key,
    required this.customExpensesItemModel,
  });

  final CustomExpensesItemModel customExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            customExpensesItemModel.title,
            style: AppStyles.styleSemiBold16(context).copyWith(),
          ),
        ),
        const SizedBox(height: 8),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            customExpensesItemModel.date,
            style: AppStyles.styleRegular14(context).copyWith(),
          ),
        ),
        const SizedBox(height: 16),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            customExpensesItemModel.price,
            style: AppStyles.styleSemiBold24(context).copyWith(),
          ),
        ),
      ],
    );
  }
}
