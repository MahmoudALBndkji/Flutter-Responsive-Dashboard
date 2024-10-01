import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/widgets/all_expensess.dart';
import 'package:flutter_responsive_dashboard/widgets/custom_drawer.dart';
import 'package:flutter_responsive_dashboard/widgets/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32.0),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40.0),
                AllExpensess(),
                SizedBox(height: 24.0),
                QuickInvoice(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
