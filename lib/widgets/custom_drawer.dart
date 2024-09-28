import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/models/drawer_item_model.dart';
import 'package:flutter_responsive_dashboard/utils/assets_image.dart';
import 'package:flutter_responsive_dashboard/widgets/drawer_item.dart';
import 'package:flutter_responsive_dashboard/widgets/drawer_items_list_view.dart';
import 'package:flutter_responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              image: AssetsImage.imagesAvatar3,
              title: "Lekan Okeowo",
              subTitle: "demo@gmail.com",
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8.0)),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                DrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Setting System',
                      image: AssetsImage.imagesSettings),
                  isActive: false,
                ),
                DrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Logout account', image: AssetsImage.imagesLogout),
                  isActive: false,
                ),
                SizedBox(height: 48.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
