import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_styles.dart';

class MyCardItem extends StatelessWidget {
  const MyCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          color: AppColors.skyBlue,
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage(Assets.imagesCardBackground),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16.copyWith(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'Stah Bandi',
                style: AppStyles.styleMedium20.copyWith(
                  color: Colors.white,
                ),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '0918 8124 0042 8129',
                  style: AppStyles.styleSemiBold24.copyWith(
                    color: AppColors.white,
                  ),
                ),
                const Gap(8),
                Text(
                  '12/20 - 124',
                  style: AppStyles.styleRegular16.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
