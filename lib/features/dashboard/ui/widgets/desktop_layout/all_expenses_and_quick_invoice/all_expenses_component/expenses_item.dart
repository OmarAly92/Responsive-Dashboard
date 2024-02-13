import 'package:flutter/material.dart';

import '../../../../../models/custom_expenses_item_model.dart';
import 'active_and_inactive_expenses_item.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({super.key, required this.isActive, required this.item});

  final bool isActive;
  final CustomExpensesItemModel item;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      reverseDuration: const Duration(milliseconds: 200),
      child: isActive
          ? ActiveExpensesItem(
              customExpensesItemModel: CustomExpensesItemModel(
                image: item.image,
                title: item.title,
                date: item.date,
                price: item.price,
              ),
            )
          : InActiveExpensesItem(
              customExpensesItemModel: CustomExpensesItemModel(
                image: item.image,
                title: item.title,
                date: item.date,
                price: item.price,
              ),
            ),
    );
  }
}
