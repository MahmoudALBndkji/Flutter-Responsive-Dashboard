import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/widgets/custom_background_container.dart';
import 'package:flutter_responsive_dashboard/widgets/latest_transaction.dart';
import 'package:flutter_responsive_dashboard/widgets/quick_invoice_form.dart';
import 'package:flutter_responsive_dashboard/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 36.0),
          LatestTransaction(),
          Divider(height: 48),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
