import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/widgets/user_info_list_tile.dart';
import '../../../../models/user_info_list_tile_model.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List<UserInfoListTileModel> item = [
    UserInfoListTileModel(title: 'Madrani Andi', subtitle: 'Madraniadi20@gmail', image: Assets.imagesAvatar1),
    UserInfoListTileModel(title: 'Josua Nunito', subtitle: 'Josh Nunito@gmail.com', image: Assets.imagesAvatar2),
    UserInfoListTileModel(title: 'Madrani Andi', subtitle: 'Madraniadi20@gmail', image: Assets.imagesAvatar1),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: item
            .map(
              (e) => IntrinsicWidth(
                child: UserInfoListTile(
                  customProfileModel: UserInfoListTileModel(
                    title: e.title,
                    subtitle: e.subtitle,
                    image: e.image,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
