import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/models/transaction_model.dart';
import 'package:flutter_dashboard/dashboard/widgets/my_card_and_income_widgets/my_card_widget/transaction_item.dart';

class TransactionList extends StatelessWidget {
  final List<TransactionModel> items;
  const TransactionList({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: items.asMap().entries.map(
      (item) {
        return Padding(
          padding: EdgeInsets.only(top: item.key == 0 ? 0 : 12),
          child: TransactionItem(item.value),
        );
      },
    ).toList());
  }
}
