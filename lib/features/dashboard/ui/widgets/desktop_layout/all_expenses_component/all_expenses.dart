import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/dashboard/ui/widgets/desktop_layout/all_expenses_component/all_expenses_header.dart';
import 'package:responsive_dashboard/features/dashboard/ui/widgets/desktop_layout/all_expenses_component/expenses_list_view.dart';

import '../../../../../../core/widgets/custom_background_container.dart';

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
