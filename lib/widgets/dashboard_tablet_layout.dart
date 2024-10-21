import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:flutter_responsive_dashboard/widgets/drawer/custom_drawer.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32.0),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: DashboardMobileLayout(),
          ),
        ),
        SizedBox(width: 32.0),
      ],
    );
  }
}
