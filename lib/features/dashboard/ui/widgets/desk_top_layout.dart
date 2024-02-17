import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'all_expenses_and_quick_invoice/all_expenses_and_quick_invoice_section.dart';
import 'custom_drawer/custom_drawer.dart';
import 'my_card_and_income/income.dart';
import 'my_card_and_income/my_card_and_transaction_history.dart';

class DeskTopLayout extends StatefulWidget {
  const DeskTopLayout({super.key});

  @override
  State<DeskTopLayout> createState() => _DeskTopLayoutState();
}

class _DeskTopLayoutState extends State<DeskTopLayout> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 5,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: AllExpensesAndQuickInvoiceSection(),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            MyCardAndTransactionHistory(),
                            Gap(24),
                            Expanded(child: Income()),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
