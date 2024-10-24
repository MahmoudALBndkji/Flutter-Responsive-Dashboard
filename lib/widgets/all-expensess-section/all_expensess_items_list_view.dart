import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/models/all_expensess_item_model.dart';
import 'package:flutter_responsive_dashboard/utils/assets_image.dart';
import 'package:flutter_responsive_dashboard/widgets/all-expensess-section/all_expensess_item.dart';

class AllExpensessItemsListView extends StatefulWidget {
  const AllExpensessItemsListView({super.key});

  @override
  State<AllExpensessItemsListView> createState() =>
      _AllExpensessItemsListViewState();
}

class _AllExpensessItemsListViewState extends State<AllExpensessItemsListView> {
  int selectedIndex = 0;
  static const items = [
    AllExpensessItemModel(
      image: AssetsImage.imagesBalance,
      title: 'Balance',
      date: 'April 2020',
      price: r'$18,950',
    ),
    AllExpensessItemModel(
      image: AssetsImage.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$26,820',
    ),
    AllExpensessItemModel(
      image: AssetsImage.imagesExpenses,
      title: 'Expenses',
      date: 'April 2024',
      price: r'$95,150',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() => selectedIndex = 0);
            },
            child: AllExpensessItem(
              isSelected: selectedIndex == 0,
              itemModel: items[0],
            ),
          ),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() => selectedIndex = 1);
            },
            child: AllExpensessItem(
              isSelected: selectedIndex == 1,
              itemModel: items[1],
            ),
          ),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() => selectedIndex = 2);
            },
            child: AllExpensessItem(
              isSelected: selectedIndex == 2,
              itemModel: items[2],
            ),
          ),
        ),
      ],
    );
  }
}
