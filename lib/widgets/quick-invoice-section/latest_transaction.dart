import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/utils/app_styles.dart';
import 'package:flutter_responsive_dashboard/widgets/quick-invoice-section/latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transactions",
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(height: 16.0),
        const LatestTransactionListView(),
      ],
    );
  }
}