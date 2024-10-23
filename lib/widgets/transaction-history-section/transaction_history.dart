import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/utils/app_styles.dart';
import 'package:flutter_responsive_dashboard/widgets/transaction-history-section/transaction_history_header.dart';
import 'package:flutter_responsive_dashboard/widgets/transaction-history-section/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(height: 20.0),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(height: 16.0),
        const TransactionHistoryListView(),
      ],
    );
  }
}
