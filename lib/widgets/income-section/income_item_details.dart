import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/models/income_item_details_model.dart';
import 'package:flutter_responsive_dashboard/utils/app_styles.dart';

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({super.key, required this.itemDetailsModel});
  final IncomeItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          children: [
            Container(
              width: 12.0,
              height: 12.0,
              decoration: ShapeDecoration(
                color: itemDetailsModel.color,
                shape: const OvalBorder(),
              ),
            ),
            const SizedBox(width: 12.0),
            Text(
              itemDetailsModel.title,
              style: AppStyles.styleRegular16(context),
            ),
            const SizedBox(width: 24.0),
            Text(
              itemDetailsModel.value,
              style: AppStyles.styleMedium16(context),
            ),
          ],
        ),
      ),
    );
  }
}
