import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'desktop_layout/all_expenses_and_quick_invoice/all_expenses_and_quick_invoice_section.dart';
import 'desktop_layout/my_card_and_income/income.dart';
import 'desktop_layout/my_card_and_income/my_card_and_transaction_history.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30, right: 32),
                child: AllExpensesAndQuickInvoiceSection(),
              ),
              SizedBox(width: 24),
              MyCardAndTransactionHistory(),
              Gap(24),
              Income(),
              Gap(24),
            ],
          ),
        ),
      ],
    );
  }
}
