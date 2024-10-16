import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/widgets/income-section/income_chart.dart';
import 'package:flutter_responsive_dashboard/widgets/income-section/income_details.dart';
import 'package:flutter_responsive_dashboard/widgets/income-section/income_section_header.dart';
import 'package:flutter_responsive_dashboard/widgets/shared/custom_background_container.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails()),
            ],
          ),
        ],
      ),
    );
  }
}
