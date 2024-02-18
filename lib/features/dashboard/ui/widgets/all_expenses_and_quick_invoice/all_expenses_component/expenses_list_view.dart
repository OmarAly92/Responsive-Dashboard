import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/utils/app_images.dart';
import '../../../../models/custom_expenses_item_model.dart';
import 'expenses_item.dart';

class ExpensesListView extends StatefulWidget {
  const ExpensesListView({super.key});

  @override
  State<ExpensesListView> createState() => _ExpensesListViewState();
}

class _ExpensesListViewState extends State<ExpensesListView> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => updateActiveWidget(0),
            child: ExpensesItem(
              isActive: activeIndex == 0,
              item: const CustomExpensesItemModel(
                image: Assets.imagesBalance,
                title: 'Balance',
                date: 'April 2022',
                price: '\$20,129',
              ),
            ),
          ),
        ),
        const Gap(10),
        Expanded(
          child: GestureDetector(
            onTap: () => updateActiveWidget(1),
            child: ExpensesItem(
              isActive: activeIndex == 1,
              item: const CustomExpensesItemModel(
                image: Assets.imagesIncome,
                title: 'Income',
                date: 'April 2022',
                price: '\$20,129',
              ),
            ),
          ),
        ),
        const Gap(10),
        Expanded(
          child: GestureDetector(
            onTap: () => updateActiveWidget(2),
            child: ExpensesItem(
              isActive: activeIndex == 2,
              item: const CustomExpensesItemModel(
                image: Assets.imagesExpenses,
                title: 'Expenses',
                date: 'April 2022',
                price: '\$20,129',
              ),
            ),
          ),
        ),
      ],
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
