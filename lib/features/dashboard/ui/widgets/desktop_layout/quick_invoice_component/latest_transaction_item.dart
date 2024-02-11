import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_styles.dart';

class LatestTransactionItem extends StatelessWidget {
  const LatestTransactionItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          SvgPicture.asset(Assets.imagesAvatar1),
          const SizedBox(width: 12),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Madrani Andi',
                style: AppStyles.styleSemiBold16,
              ),
              Text(
                'Madraniadi20@gmail',
                style: AppStyles.styleRegular12,
              ),
            ],
          )
        ],
      ),
    );
  }
}
