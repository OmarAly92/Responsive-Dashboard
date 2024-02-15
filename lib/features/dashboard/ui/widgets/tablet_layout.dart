import 'package:flutter/material.dart';

import 'desktop_layout/all_expenses_and_quick_invoice/all_expenses_and_quick_invoice_section.dart';
import 'desktop_layout/custom_drawer/custom_drawer.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(top: 30, right: 32),
                  child: AllExpensesAndQuickInvoiceSection(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
