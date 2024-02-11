import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/dashboard/ui/widgets/desktop_layout/quick_invoice_component/latest_transaction.dart';

import '../../../../../../core/widgets/widgets_container_background.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const WidgetsContainerBackground(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          LatestTransaction(),
        ],
      ),
    );
  }
}
