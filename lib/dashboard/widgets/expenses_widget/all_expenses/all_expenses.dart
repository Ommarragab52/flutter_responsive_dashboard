import 'package:flutter/material.dart';
import 'package:flutter_dashboard/dashboard/widgets/expenses_widget/all_expenses/all_expenses_header.dart';
import 'package:flutter_dashboard/dashboard/widgets/custom_container.dart';
import 'package:flutter_dashboard/dashboard/widgets/expenses_widget/all_expenses/expenses_list.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40),
      child: CustomContainer(
        child: Column(
          children: [
            AllExpensesHeader(),
            SizedBox(height: 16),
            ExpensesList(),
          ],
        ),
      ),
    );
  }
}
