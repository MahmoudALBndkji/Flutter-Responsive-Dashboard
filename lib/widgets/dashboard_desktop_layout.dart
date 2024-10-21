import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/widgets/all-expensess-and-quick-invoice-section/all_expensess_and_quick_invoice_section.dart';
import 'package:flutter_responsive_dashboard/widgets/drawer/custom_drawer.dart';
import 'package:flutter_responsive_dashboard/widgets/income-section/income_section.dart';
import 'package:flutter_responsive_dashboard/widgets/my-cards-and-transaction-history-section/my_cards_and_transaction_history_section.dart';

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
          child: Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: AllExpensessAndQuickInvoiceSection(),
          ),
        ),
        SizedBox(width: 24.0),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40.0),
                MyCardsAndTransactionHistorySection(),
                SizedBox(height: 24.0),
                IncomeSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
