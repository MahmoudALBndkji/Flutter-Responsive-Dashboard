import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        Container(
          width: 48.0,
          height: 48.0,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xFFFAFAFA),
          ),
          child: const Icon(
            Icons.add,
            color: Color(0xFF4EB7F2),
          ),
        ),
      ],
    );
  }
}