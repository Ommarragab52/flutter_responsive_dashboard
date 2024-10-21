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
    return ScrollConfiguration(
      behavior: const ScrollBehavior()
          .copyWith(dragDevices: {PointerDeviceKind.mouse}),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: expensesItems.length,
        itemBuilder: (BuildContext context, int index) =>
            _buildExpensesItem(expensesItems[index], index),
      ),
    );
  }

  Widget _buildExpensesItem(ExpensesModel item, int index) {
    final isSelected = selectedIndex == index;
    return Padding(
      padding: EdgeInsets.only(left: index != 0 ? 12 : 0),
      child: AspectRatio(
        aspectRatio: 0.8,
        child: ExpensesItem(
          item: item,
          isSelected: isSelected,
          onClick: () {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
