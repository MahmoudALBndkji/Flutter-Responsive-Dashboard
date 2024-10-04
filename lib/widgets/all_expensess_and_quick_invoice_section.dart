import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/widgets/all_expensess.dart';
import 'package:flutter_responsive_dashboard/widgets/quick_invoice.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40.0),
          AllExpensess(),
          SizedBox(height: 24.0),
          QuickInvoice(),
        ],
      ),
    );
  }
}
