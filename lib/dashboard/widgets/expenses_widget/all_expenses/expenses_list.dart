import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/models/expenses_model.dart';
import 'package:flutter_dashboard/core/utils/app_constants.dart';
import 'package:flutter_dashboard/dashboard/widgets/expenses_widget/all_expenses/expenses_item.dart';

class ExpensesList extends StatefulWidget {
  const ExpensesList({
    super.key,
  });

  @override
  State<ExpensesList> createState() => _ExpensesListState();
}

class _ExpensesListState extends State<ExpensesList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: expensesItems
          .map((item) => Expanded(child: buildExpensesItem(item)))
          .toList(),
    );
  }

  Padding buildExpensesItem(ExpensesModel item) {
    final index = expensesItems.indexOf(item);
    return Padding(
      padding: EdgeInsets.only(left: index != 0 ? 12 : 0),
      child: ExpensesItem(
        item: item,
        isSelected: selectedIndex == index,
        onClick: () {
          setState(() {
            if (selectedIndex != index) {
              selectedIndex = index;
            }
          });
        },
      ),
    );
  }
}
