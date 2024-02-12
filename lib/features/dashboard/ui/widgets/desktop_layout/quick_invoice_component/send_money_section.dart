import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/core/utils/app_colors.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

import '../../../../../../core/widgets/custom_button.dart';
import 'title_text_field.dart';

class SendMoneySection extends StatelessWidget {
  const SendMoneySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hintText: 'Type customer name',
              ),
            ),
            Gap(16),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hintText: 'Type customer Email',
              ),
            ),
          ],
        ),
        const Gap(24),
        const Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item name',
                hintText: 'Type item name',
              ),
            ),
            Gap(16),
            Expanded(
              child: TitleTextField(
                title: 'Item mount',
                hintText: 'USD',
              ),
            ),
          ],
        ),
        const Gap(24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                backgroundColor: AppColors.white,
                onPressed: () {},
                child: Text(
                  'Add more details',
                  style: AppStyles.styleSemiBold18.copyWith(
                    color: AppColors.skyBlue,
                  ),
                ),
              ),
            ),
            const Gap(24),
            Expanded(
              child: CustomButton(
                onPressed: () {},
                child: Text(
                  'Send Money',
                  style: AppStyles.styleSemiBold18.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
