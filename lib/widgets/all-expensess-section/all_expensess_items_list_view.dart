import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/models/all_expensess_item_model.dart';
import 'package:flutter_responsive_dashboard/utils/assets_image.dart';
import 'package:flutter_responsive_dashboard/widgets/all-expensess-section/all_expensess_item.dart';

class AllExpensessItemsListView extends StatefulWidget {
  const AllExpensessItemsListView({super.key});
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
  State<AllExpensessItemsListView> createState() =>
      _AllExpensessItemsListViewState();
}

class _AllExpensessItemsListViewState extends State<AllExpensessItemsListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: AllExpensessItemsListView.items.asMap().entries.map((e) {
        int index = e.key;
        AllExpensessItemModel item = e.value;
        return Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: index % 2 != 0 ? 12 : 0),
            child: GestureDetector(
              onTap: () {
                if (selectedIndex != index) {
                  setState(() => selectedIndex = index);
                }
              },
              child: AllExpensessItem(
                isSelected: selectedIndex == index,
                itemModel: item,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
