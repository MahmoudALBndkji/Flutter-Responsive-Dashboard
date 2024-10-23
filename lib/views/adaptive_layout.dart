import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tableLayout,
    required this.desktopLayout,
  });

  final WidgetBuilder mobileLayout, tableLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < SizeConfig.tablet) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < SizeConfig.desktop) {
          return tableLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
