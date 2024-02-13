import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/features/dashboard/ui/widgets/desktop_layout/my_card_and_income/tansction_history_header.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import 'transaction_history_list_items.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TansctionHistoryHeader(),
        const Gap(20),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16.copyWith(
            color: AppColors.grey,
          ),
        ),
        const Gap(16),
        const TransactionHistoryListItems(),
      ],
    );
  }
}
