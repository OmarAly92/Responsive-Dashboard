import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import 'transaction_history_header.dart';
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
        const TransactionHistoryHeader(),
        const Gap(20),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(context).copyWith(
            color: AppColors.grey,
          ),
        ),
        const Gap(16),
        const TransactionHistoryListItems(),
      ],
    );
  }
}
