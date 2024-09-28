import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/models/drawer_item_model.dart';
import 'package:flutter_responsive_dashboard/utils/assets_image.dart';
import 'package:flutter_responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeIndex = 0;
  final items = [
    const DrawerItemModel(
        title: 'Dashboard', image: AssetsImage.imagesDashboard),
    const DrawerItemModel(
        title: 'My Transction', image: AssetsImage.imagesMyTransctions),
    const DrawerItemModel(
        title: 'Statistics', image: AssetsImage.imagesStatistics),
    const DrawerItemModel(
        title: 'Wallet Account', image: AssetsImage.imagesWalletAccount),
    const DrawerItemModel(
        title: 'My Investments', image: AssetsImage.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (activeIndex != index) setState(() => activeIndex = index);
        },
        child: DrawerItem(
          drawerItemModel: items[index],
          isActive: activeIndex == index,
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 10.0),
      itemCount: items.length,
    );
  }
}
