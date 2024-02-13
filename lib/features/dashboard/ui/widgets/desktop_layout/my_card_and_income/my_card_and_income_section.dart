import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'income.dart';
import 'my_card_and_transaction_history.dart';

class MyCardAndIncomeSection extends StatelessWidget {
  const MyCardAndIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyCardAndTransactionHistory(),
        Gap(24),
        Income(),
      ],
    );
  }
}
