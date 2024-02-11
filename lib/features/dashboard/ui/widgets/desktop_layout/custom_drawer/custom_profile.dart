import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../models/custom-profile-model.dart';

class CustomProfile extends StatelessWidget {
  const CustomProfile({super.key, required this.customProfileModel});

  final CustomProfileModel customProfileModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.lightGrey,
      elevation: 0,
      child: ListTile(
        title: Text(
          customProfileModel.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          customProfileModel.subtitle,
          style: AppStyles.styleRegular12,
        ),
        leading: SvgPicture.asset(Assets.imagesAvatar3),
      ),
    );
  }
}
