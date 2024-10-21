import 'package:flutter/material.dart';
import 'package:flutter_dashboard/dashboard/widgets/my_card_and_income_widgets/income_widget/income_widget.dart';
import 'package:flutter_dashboard/dashboard/widgets/my_card_and_income_widgets/my_card_widget/my_card_widget.dart';

class MyCardAndIncomeSection extends StatelessWidget {
  const MyCardAndIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyCardWidget(),
        SizedBox(height: 24),
        IncomeWidget(),
        SizedBox(height: 40),
      ],
    );
  }
}
