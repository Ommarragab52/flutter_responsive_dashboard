import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_colors.dart';
import 'package:flutter_dashboard/core/utils/app_constants.dart';
import 'package:flutter_dashboard/core/utils/app_styles.dart';
import 'package:flutter_dashboard/dashboard/widgets/custom_container.dart';
import 'package:flutter_dashboard/dashboard/widgets/expenses_widget/quick_invoice/buttons_widget.dart';
import 'package:flutter_dashboard/dashboard/widgets/expenses_widget/quick_invoice/custom_title_text_form_field.dart';
import 'package:flutter_dashboard/dashboard/widgets/expenses_widget/quick_invoice/latest_transaction_users_list.dart';
import 'package:flutter_dashboard/dashboard/widgets/expenses_widget/quick_invoice/quick_invoice_header.dart';
import 'package:flutter_dashboard/dashboard/widgets/expenses_widget/quick_invoice/text_fields_list.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

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
            Text('Latest Transaction', style: AppStyles.styleMedium16),
            const SizedBox(
              height: 72,
              child: LatestTransactionUsersList(),
            ),
            const Divider(height: 48),
            const TextFieldsList(),
            const SizedBox(height: 24),
            const ButtonsWidget()
          ],
        ));
  }
}
