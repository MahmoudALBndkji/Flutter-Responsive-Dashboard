import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/models/transaction_model.dart';
import 'package:flutter_responsive_dashboard/utils/app_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular16(context).copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionModel.isWithDrawal
                ? const Color(0xFFF3735E)
                : const Color(0xFF7CD87A),
          ),
        ),
      ),
    );
  }
}
