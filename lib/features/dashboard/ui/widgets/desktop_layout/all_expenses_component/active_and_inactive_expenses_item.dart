import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/dashboard/ui/widgets/desktop_layout/all_expenses_component/active_and_inactive_expenses_item_body.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../models/custom_expenses_item_model.dart';
import 'expenses_item_header.dart';

class ActiveExpensesItem extends StatelessWidget {
  const ActiveExpensesItem({super.key, required this.customExpensesItemModel});

  final CustomExpensesItemModel customExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: AppColors.skyBlue,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF4DB7F2)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpensesItemHeader(
            customExpensesItemModel: customExpensesItemModel,
            shapeColor: Colors.white.withOpacity(0.10000000149011612),
            iconColor: Colors.white,
          ),
          const SizedBox(height: 34),
          ActiveExpensesItemBody(customExpensesItemModel: customExpensesItemModel),
        ],
      ),
    );
  }
}

class InActiveExpensesItem extends StatelessWidget {
  const InActiveExpensesItem({super.key, required this.customExpensesItemModel});

  final CustomExpensesItemModel customExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
          color: AppColors.white,
          shape: BoxShape.rectangle,
          border: Border.all(color: const Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ExpensesItemHeader(customExpensesItemModel: customExpensesItemModel),
          const SizedBox(height: 34),
          InActiveExpensesItemBody(customExpensesItemModel: customExpensesItemModel),
        ],
      ),
    );
  }
}
