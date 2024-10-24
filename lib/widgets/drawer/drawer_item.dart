import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/models/drawer_item_model.dart';
import 'package:flutter_responsive_dashboard/utils/app_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          drawerItemModel.title,
          style: isActive
              ? AppStyles.styleBold16(context)
              : AppStyles.styleMedium16(context),
        ),
      ),
      trailing: isActive
          ? Container(
              width: 3.27,
              color: const Color(0xFF4EB7F2),
            )
          : null,
    );
  }
}
