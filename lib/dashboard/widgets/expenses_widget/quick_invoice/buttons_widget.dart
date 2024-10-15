import 'package:flutter/material.dart';
import 'package:flutter_dashboard/dashboard/widgets/expenses_widget/quick_invoice/add_more_detaisl_button.dart';
import 'package:flutter_dashboard/dashboard/widgets/expenses_widget/quick_invoice/send_money_button.dart';

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
