import 'package:flutter/material.dart';

import 'all_expenses_and_quick_invoice_section.dart';
import 'desktop_layout/custom_drawer/custom_drawer.dart';

class DeskTopLayout extends StatefulWidget {
  const DeskTopLayout({super.key});

  @override
  State<DeskTopLayout> createState() => _DeskTopLayoutState();
}

class _DeskTopLayoutState extends State<DeskTopLayout> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: CustomDrawer()),
        const SizedBox(width: 32),
        const Expanded(flex: 3, child: AllExpensesAndQuickInvoiceSection()),
        Expanded(flex: 2, child: Container()),
      ],
    );
  }
}
