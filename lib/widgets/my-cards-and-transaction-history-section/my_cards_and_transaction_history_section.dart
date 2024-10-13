import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/widgets/my-cards-section/my_cards_section.dart';
import 'package:flutter_responsive_dashboard/widgets/shared/custom_background_container.dart';
import 'package:flutter_responsive_dashboard/widgets/transaction-history-section/transaction_history.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(
            height: 40.0,
            color: Color(0xFFF1F1F1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
