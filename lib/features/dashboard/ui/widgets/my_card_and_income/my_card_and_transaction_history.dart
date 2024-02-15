import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/widgets/custom_background_container.dart';
import 'my_card_section.dart';
import 'transaction_history.dart';

class MyCardAndTransactionHistory extends StatefulWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  State<MyCardAndTransactionHistory> createState() => _MyCardAndTransactionHistoryState();
}

class _MyCardAndTransactionHistoryState extends State<MyCardAndTransactionHistory> {
  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 40,
            color: AppColors.lightGreyBorderColor,
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
