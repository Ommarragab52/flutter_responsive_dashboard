import 'package:flutter/material.dart';
import 'package:flutter_dashboard/dashboard/widgets/all_expenses_and_quick_invoice_widgets/quick_invoice_widget/add_more_detaisl_button.dart';
import 'package:flutter_dashboard/dashboard/widgets/all_expenses_and_quick_invoice_widgets/quick_invoice_widget/send_money_button.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        AddMoreDetaislButton(),
        Spacer(),
        SendMoneyButton(),
      ],
    );
  }
}
