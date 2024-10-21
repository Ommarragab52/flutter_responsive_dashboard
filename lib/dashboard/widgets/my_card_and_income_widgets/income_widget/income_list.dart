import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_constants.dart';
import 'package:flutter_dashboard/dashboard/widgets/my_card_and_income_widgets/income_widget/income_item.dart';

class IncomeList extends StatelessWidget {
  const IncomeList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: incomeChartItems
          .map(
            (item) => IncomeItem(
              colorHex: item.color,
              title: item.title,
              precent: item.precent.toString(),
            ),
          )
          .toList(),
    );
  }
}
