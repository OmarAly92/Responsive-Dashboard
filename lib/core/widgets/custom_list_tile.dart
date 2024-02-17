import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

import '../../features/dashboard/models/custom_list_tile_model.dart';
import '../utils/app_colors.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.customListTileModel,
  });

  final CustomListTileModel customListTileModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        customListTileModel.title,
        style: customListTileModel.active
            ? AppStyles.styleBold16(context).copyWith(
                color: AppColors.skyBlue,
              )
            : customListTileModel.textStyle,
      ),
      leading: SvgPicture.asset(customListTileModel.imageAssets),
      trailing: Container(
        width: 3.27,
        color: customListTileModel.active ? AppColors.skyBlue : null,
      ),
    );
  }
}
