import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_colors.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.trailing,
    this.isWithDraw = false,
  });

  final String title;
  final String subtitle;
  final String trailing;
  final bool isWithDraw;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColors.lightGrey,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        title: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: AppStyles.styleSemiBold16(context),
          ),
        ),
        subtitle: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            subtitle,
            style: AppStyles.styleRegular16(context).copyWith(
              color: AppColors.grey,
            ),
          ),
        ),
        trailing: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            trailing,
            style: AppStyles.styleSemiBold20(context).copyWith(
              color: isWithDraw ? Colors.red : Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
