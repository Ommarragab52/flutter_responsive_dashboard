import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/size_config.dart';
import 'package:flutter_dashboard/dashboard/widgets/my_card_and_income_widgets/income_widget/custom_pie_chart.dart';
import 'package:flutter_dashboard/dashboard/widgets/my_card_and_income_widgets/income_widget/income_list.dart';

class IncomeChartWidget extends StatelessWidget {
  const IncomeChartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width > SizeConfig.desktopBreakpoint && width < 1360) {
      return const Row(
        children: [
          Spacer(),
          Expanded(flex: 5, child: CustomPieChart(showDetails: true)),
          Spacer()
        ],
      );
    } else {
      return const Row(
        children: [
          Expanded(child: CustomPieChart(showDetails: false)),
          SizedBox(width: 40),
          Expanded(flex: 2, child: IncomeList()),
        ],
      );
    }
  }
}
