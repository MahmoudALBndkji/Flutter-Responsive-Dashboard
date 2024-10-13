import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/models/transaction_model.dart';
import 'package:flutter_responsive_dashboard/widgets/transaction-history-section/transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TransactionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isWithDrawal: true,
    ),
    TransactionModel(
      title: 'Landing Page Project',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isWithDrawal: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App Project',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isWithDrawal: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 6.0),
      shrinkWrap: true,
      itemBuilder: (context, index) =>
          TransactionHistoryItem(transactionModel: items[index]),
      itemCount: items.length,
    );
  }
}
