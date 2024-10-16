import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/models/income_item_details_model.dart';
import 'package:flutter_responsive_dashboard/widgets/income-section/income_item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    IncomeItemDetailsModel(
      color: Color(0xFF208BC7),
      title: 'Design Service',
      value: '%40',
    ),
    IncomeItemDetailsModel(
      color: Color(0xFF4DB7F2),
      title: 'Design Product',
      value: '%25',
    ),
    IncomeItemDetailsModel(
      color: Color(0xFF064060),
      title: 'Product Royalti',
      value: '%20',
    ),
    IncomeItemDetailsModel(
      color: Color(0xFFE2DECD),
      title: 'Other',
      value: '%22',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) =>
          IncomeItemDetails(itemDetailsModel: items[index]),
    );
  }
}
