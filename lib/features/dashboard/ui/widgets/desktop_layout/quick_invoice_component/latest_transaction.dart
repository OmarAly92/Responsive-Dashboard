import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/dashboard/ui/widgets/desktop_layout/quick_invoice_component/latest_transaction_item.dart';

import '../../../../../../core/utils/app_styles.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16,
        ),
        SizedBox(height: 12),
        LatestTransactionItem(),
      ],
    );
  }
}
