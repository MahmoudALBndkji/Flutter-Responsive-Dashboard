import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/widgets/all-expensess-section/all_expensess.dart';
import 'package:flutter_responsive_dashboard/widgets/quick-invoice-section/quick_invoice.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensess(),
          SizedBox(height: 24.0),
          QuickInvoice(),
        ],
      ),
    );
  }
}
