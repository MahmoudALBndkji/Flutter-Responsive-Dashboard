import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/widgets/all-expensess-section/all_expensess_and_quick_invoice_section.dart';
import 'package:flutter_responsive_dashboard/widgets/drawer/custom_drawer.dart';
import 'package:flutter_responsive_dashboard/widgets/my-cards-section/my_cards_section.dart';

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
        SizedBox(width: 24.0),
        Expanded(child: MyCardsSection()),
      ],
    );
  }
}
