import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/models/expenses_model.dart';
import 'package:flutter_dashboard/core/utils/app_constants.dart';
import 'package:flutter_dashboard/dashboard/widgets/all_expenses_and_quick_invoice_widgets/all_expenses_widget/expenses_item.dart';

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
          .asMap()
          .entries
          .map((item) =>
              Expanded(child: _buildExpensesItem(item.value, item.key)))
          .toList(),
    );
  }

  Widget _buildExpensesItem(ExpensesModel item, int index) {
    final isSelected = selectedIndex == index;
    return Padding(
      padding:
          EdgeInsets.only(right: index == expensesItems.length - 1 ? 0 : 6),
      child: ExpensesItem(
        item: item,
        isSelected: isSelected,
        onClick: () {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
