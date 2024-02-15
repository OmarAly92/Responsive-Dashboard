import 'package:flutter/material.dart';

import '../../../../../../../core/widgets/custom_background_container.dart';
import 'all_expenses_header.dart';
import 'expenses_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          ExpensesListView(),
        ],
      ),
    );
  }
}
