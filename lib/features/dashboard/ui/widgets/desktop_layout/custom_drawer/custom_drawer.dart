import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/widgets/custom_list_tile.dart';
import '../../../../models/custom_list_tile_model.dart';
import '../../../../models/user_info_list_tile_model.dart';
import 'drawer_items_list_view.dart';
import 'user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  UserInfoListTile(
                    customProfileModel: UserInfoListTileModel(
                      title: 'Omar Aly',
                      subtitle: 'omar@gmail.com',
                      image: Assets.imagesAvatar3,
                    ),
                  ),
                  SizedBox(height: 8),
                  DrawerItemsListView(),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                CustomListTile(
                  customListTileModel: CustomListTileModel(
                    title: 'Setting system',
                    imageAssets: Assets.imagesSettings,
                    textStyle: AppStyles.styleRegular16,
                  ),
                ),
                SizedBox(height: 20),
                CustomListTile(
                  customListTileModel: CustomListTileModel(
                    title: 'Logout account',
                    imageAssets: Assets.imagesLogout,
                    textStyle: AppStyles.styleRegular16,
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
