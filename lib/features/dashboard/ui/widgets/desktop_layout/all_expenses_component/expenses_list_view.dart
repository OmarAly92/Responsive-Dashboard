import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/dashboard/models/custom_expenses_item_model.dart';

import '../../../../../../core/utils/app_images.dart';
import 'expenses_item.dart';

class ExpensesListView extends StatefulWidget {
  const ExpensesListView({
    super.key,
  });

  @override
  State<ExpensesListView> createState() => _ExpensesListViewState();
}

class _ExpensesListViewState extends State<ExpensesListView> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<CustomExpensesItemModel> items = [
      const CustomExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: '\$20,129',
      ),
      const CustomExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: '\$20,129',
      ),
      const CustomExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: '\$20,129',
      ),
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: items.asMap().entries.map((e) {
        final index = e.key;
        final item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () => updateActiveWidget(index),
            child: Padding(
              padding: index == 1 ? const EdgeInsets.symmetric(horizontal: 10) : EdgeInsets.zero,
              child: ExpensesItem(
                isActive: activeIndex == index,
                item: item,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  void updateActiveWidget(int index) {
    if (activeIndex != index) {
      setState(() {
        activeIndex = index;
      });
    }
  }
}
