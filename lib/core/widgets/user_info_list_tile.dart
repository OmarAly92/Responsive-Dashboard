import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../features/dashboard/models/user_info_list_tile_model.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.customProfileModel});

  final UserInfoListTileModel customProfileModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.lightGrey,
      elevation: 0,
      child: Center(
        child: ListTile(
          title: Text(
            customProfileModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            customProfileModel.subtitle,
            style: AppStyles.styleRegular12(context),
          ),
          leading: SvgPicture.asset(customProfileModel.image),
        ),
      ),
    );
  }
}
