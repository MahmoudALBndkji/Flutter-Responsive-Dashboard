import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/utils/app_styles.dart';
import 'package:flutter_responsive_dashboard/widgets/all-expensess-section/range_options.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "All Expensess",
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        const RangeOptions(),
      ],
    );
  }
}
