import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/utils/size_config.dart';
import 'package:flutter_responsive_dashboard/widgets/income-section/detailed_income_chart.dart';
import 'package:flutter_responsive_dashboard/widgets/income-section/income_chart.dart';
import 'package:flutter_responsive_dashboard/widgets/income-section/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return width >= SizeConfig.desktop && width < 1750
        ? const Expanded(
            child: Padding(
            padding: EdgeInsets.all(16.0),
            child: DetailedIncomeChart(),
          ))
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
