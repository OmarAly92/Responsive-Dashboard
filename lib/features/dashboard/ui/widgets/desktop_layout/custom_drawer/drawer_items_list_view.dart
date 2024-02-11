import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/custom_list_tile.dart';
import 'package:responsive_dashboard/features/dashboard/models/custom_list_tile_model.dart';

import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_styles.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int active = 0;

  static const List<CustomListTileModel> _customListTileModel = [
    CustomListTileModel(
      title: 'Dashboard',
      imageAssets: Assets.imagesDashboard,
      textStyle: AppStyles.styleRegular16,
    ),
    CustomListTileModel(
      title: 'My Transaction',
      imageAssets: Assets.imagesMyTransctions,
      textStyle: AppStyles.styleRegular16,
    ),
    CustomListTileModel(
      title: 'Statistics',
      imageAssets: Assets.imagesStatistics,
      textStyle: AppStyles.styleRegular16,
    ),
    CustomListTileModel(
      title: 'Wallet Account',
      imageAssets: Assets.imagesWalletAccount,
      textStyle: AppStyles.styleRegular16,
    ),
    CustomListTileModel(
      title: 'My Investment',
      imageAssets: Assets.imagesMyInvestments,
      textStyle: AppStyles.styleRegular16,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        _customListTileModel.length,
        (index) => GestureDetector(
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
                title: _customListTileModel[index].title,
                imageAssets: _customListTileModel[index].imageAssets,
                textStyle: _customListTileModel[index].textStyle,
                active: active == index,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
