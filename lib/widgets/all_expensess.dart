import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/widgets/all_expensess_header.dart';
import 'package:flutter_responsive_dashboard/widgets/all_expensess_items_list_view.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: const Column(
        children: [
          AllExpensessHeader(),
          SizedBox(height: 16.0),
          AllExpensessItemsListView(),
        ],
      ),
    );
  }
}
