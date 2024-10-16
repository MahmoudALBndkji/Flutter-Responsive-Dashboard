import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/widgets/all-expensess-and-quick-invoice-section/all_expensess_and_quick_invoice_section.dart';
import 'package:flutter_responsive_dashboard/widgets/income-section/income_section.dart';
import 'package:flutter_responsive_dashboard/widgets/my-cards-and-transaction-history-section/my_cards_and_transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndQuickInvoiceSection(),
          SizedBox(height: 24.0),
          MyCardsAndTransactionHistorySection(),
          SizedBox(height: 24.0),
          IncomeSection(),
        ],
      ),
    );
  }
}
