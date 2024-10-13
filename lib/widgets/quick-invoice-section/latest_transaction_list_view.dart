import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/models/user_info_model.dart';
import 'package:flutter_responsive_dashboard/utils/assets_image.dart';
import 'package:flutter_responsive_dashboard/widgets/shared/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
      image: AssetsImage.imagesAvatar1,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: AssetsImage.imagesAvatar2,
      title: 'Josua Nunito',
      subTitle: 'Josh Nunito@gmail.com',
    ),
    UserInfoModel(
      image: AssetsImage.imagesAvatar3,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    // * This Way Using When The Item Count is Limited
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((item) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: item)))
            .toList(),
      ),
    );
    // ? Another Way
    // * This Way Using When The Item Count is Not Know OR unLimited
    // SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) => IntrinsicWidth(
    //       child: UserInfoListTile(userInfoModel: items[index]),
    //     ),
    //     itemCount: items.length,
    //   ),
    // );
  }
}
