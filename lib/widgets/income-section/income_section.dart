import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/widgets/income-section/income_section_body.dart';
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
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
