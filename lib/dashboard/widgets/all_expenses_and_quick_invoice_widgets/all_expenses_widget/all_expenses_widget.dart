import 'package:flutter/material.dart';
import 'package:flutter_dashboard/dashboard/widgets/all_expenses_and_quick_invoice_widgets/all_expenses_widget/all_expenses_header.dart';
import 'package:flutter_dashboard/core/widgets/custom_container.dart';
import 'package:flutter_dashboard/dashboard/widgets/all_expenses_and_quick_invoice_widgets/all_expenses_widget/expenses_list.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          ExpensesList(),
        ],
      ),
    );
  }
}
