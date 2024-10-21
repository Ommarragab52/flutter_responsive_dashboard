import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_constants.dart';
import 'package:flutter_dashboard/core/widgets/custom_text_and_dropdown_menu_header_widget.dart';
import 'package:flutter_dashboard/core/widgets/custom_container.dart';
import 'package:flutter_dashboard/dashboard/widgets/all_expenses_and_quick_invoice_widgets/all_expenses_widget/expenses_list.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          CustomTextAndDropdownMenuHeaderWidget(
            title: 'All Expenses',
            dropdownMenuItems: dateItems,
          ),
          const SizedBox(height: 16),
          const SizedBox(height: 230, child: ExpensesList()),
        ],
      ),
    );
  }
}
