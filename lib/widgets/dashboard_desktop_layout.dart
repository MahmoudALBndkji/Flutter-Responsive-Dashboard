import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:flutter_responsive_dashboard/widgets/custom_drawer.dart';

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
          child: AllExpensessAndQuickInvoiceSection(),
        ),
      ],
    );
  }
}
