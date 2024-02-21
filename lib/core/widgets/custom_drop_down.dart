import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/core/utils/app_colors.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightGreyBorderColor),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleSemiBold20(context),
          ),
          const SizedBox(width: 18),
          const Icon(
            CupertinoIcons.chevron_down,
            color: AppColors.darkBlue,
          )
        ],
      ),
    );
  }
}
