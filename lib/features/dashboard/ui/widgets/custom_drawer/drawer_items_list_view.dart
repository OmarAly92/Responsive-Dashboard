import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_list_tile.dart';
import '../../../models/custom_list_tile_model.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int active = 0;

  @override
  Widget build(BuildContext context) {
    final List<CustomListTileModel> items = [
      CustomListTileModel(
        title: 'Dashboard',
        imageAssets: Assets.imagesDashboard,
        textStyle: AppStyles.styleRegular16(context),
      ),
      CustomListTileModel(
        title: 'My Transaction',
        imageAssets: Assets.imagesMyTransctions,
        textStyle: AppStyles.styleRegular16(context),
      ),
      CustomListTileModel(
        title: 'Statistics',
        imageAssets: Assets.imagesStatistics,
        textStyle: AppStyles.styleRegular16(context),
      ),
      CustomListTileModel(
        title: 'Wallet Account',
        imageAssets: Assets.imagesWalletAccount,
        textStyle: AppStyles.styleRegular16(context),
      ),
      CustomListTileModel(
        title: 'My Investment',
        imageAssets: Assets.imagesMyInvestments,
        textStyle: AppStyles.styleRegular16(context),
      ),
    ];

    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (active != index) {
            setState(() {
              active = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: CustomListTile(
            customListTileModel: CustomListTileModel(
              title: items[index].title,
              imageAssets: items[index].imageAssets,
              textStyle: items[index].textStyle,
              active: active == index,
            ),
          ),
        ),
      ),
    );
  }
}
