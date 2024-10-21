import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_colors.dart';
import 'package:flutter_dashboard/core/utils/app_constants.dart';
import 'package:flutter_dashboard/core/utils/app_styles.dart';
import 'package:flutter_dashboard/dashboard/widgets/custom_container.dart';
import 'package:flutter_dashboard/dashboard/widgets/custom_text_and_dropdown_menu_header_widget.dart';
import 'package:flutter_dashboard/dashboard/widgets/my_card_and_income_widgets/income_widget/income_chart_widget.dart';

class IncomeWidget extends StatelessWidget {
  const IncomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomTextAndDropdownMenuHeaderWidget(
          title: 'Income',
          dropdownMenuItems: dateItems,
        ),
        const SizedBox(height: 16),
        const IncomeChartWidget(),
        const Divider(height: 56),
        TextButton(
            onPressed: () {},
            child: Text(
              'See details',
              style: AppStyles.styleRegular16(context)
                  .copyWith(color: AppColors.primaryColor),
            ))
      ],
    ));
  }
}
