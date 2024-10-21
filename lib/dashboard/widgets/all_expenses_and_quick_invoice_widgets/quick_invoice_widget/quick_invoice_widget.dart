import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_styles.dart';
import 'package:flutter_dashboard/dashboard/widgets/custom_container.dart';
import 'package:flutter_dashboard/dashboard/widgets/all_expenses_and_quick_invoice_widgets/quick_invoice_widget/buttons_widget.dart';
import 'package:flutter_dashboard/dashboard/widgets/all_expenses_and_quick_invoice_widgets/quick_invoice_widget/latest_transaction_users_list.dart';
import 'package:flutter_dashboard/dashboard/widgets/all_expenses_and_quick_invoice_widgets/quick_invoice_widget/quick_invoice_header.dart';
import 'package:flutter_dashboard/dashboard/widgets/all_expenses_and_quick_invoice_widgets/quick_invoice_widget/text_fields.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        padding: 24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const QuickInvoiceHeader(),
            const SizedBox(height: 24),
            Text('Latest Transaction', style: AppStyles.styleMedium16(context)),
            const SizedBox(
              height: 72,
              child: LatestTransactionUsersList(),
            ),
            const Divider(height: 48),
            const TextFields(),
            const SizedBox(height: 24),
            const ButtonsWidget()
          ],
        ));
  }
}
