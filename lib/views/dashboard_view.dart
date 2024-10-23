import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/utils/size_config.dart';
import 'package:flutter_responsive_dashboard/views/adaptive_layout.dart';
import 'package:flutter_responsive_dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:flutter_responsive_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:flutter_responsive_dashboard/widgets/dashboard_tablet_layout.dart';
import 'package:flutter_responsive_dashboard/widgets/drawer/custom_drawer.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0.0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => scaffoldKey.currentState?.openDrawer(),
              ),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      drawer:
          MediaQuery.sizeOf(context).width < SizeConfig.tablet ? const CustomDrawer() : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tableLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
