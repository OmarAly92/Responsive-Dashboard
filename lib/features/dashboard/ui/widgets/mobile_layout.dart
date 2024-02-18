import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'all_expenses_and_quick_invoice/all_expenses_and_quick_invoice_section.dart';
import 'my_card_and_income/income.dart';
import 'my_card_and_income/my_card_and_transaction_history.dart';

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
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  AllExpensesAndQuickInvoiceSection(),
                  Gap(24),
                  MyCardAndTransactionHistory(),
                  Gap(24),
                  Income(),
                  Gap(24),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
