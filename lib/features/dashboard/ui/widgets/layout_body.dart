import 'package:flutter/material.dart';

import 'desktop_layout/all_expenses_component/all_expenses.dart';
import 'desktop_layout/quick_invoice_component/quick_invoice.dart';

class LayoutBody extends StatelessWidget {
  const LayoutBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40),
        AllExpenses(),
        QuickInvoice(),
      ],
    );
  }
}
