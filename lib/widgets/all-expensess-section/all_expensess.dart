import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/widgets/all-expensess-section/all_expensess_header.dart';
import 'package:flutter_responsive_dashboard/widgets/all-expensess-section/all_expensess_items_list_view.dart';
import 'package:flutter_responsive_dashboard/widgets/shared/custom_background_container.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensessHeader(),
          SizedBox(height: 16.0),
          AllExpensessItemsListView(),
        ],
      ),
    );
  }
}
