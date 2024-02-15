import 'package:flutter/material.dart';

import 'transaction_history_item.dart';

class TransactionHistoryListItems extends StatelessWidget {
  const TransactionHistoryListItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TransactionHistoryItem(
          title: 'Cash Withdrawal',
          subtitle: '13 Apr, 2022 ',
          trailing: '\$20,129',
          isWithDraw: true,
        ),
        TransactionHistoryItem(
          title: 'Landing Page project',
          subtitle: '13 Apr, 2022 at 3:30 PM',
          trailing: '\$2,000',
        ),
        TransactionHistoryItem(
          title: 'Juni Mobile App project',
          subtitle: '13 Apr, 2022 at 3:30 PM',
          trailing: '\$20,129',
        ),
      ],
    );
  }
}
