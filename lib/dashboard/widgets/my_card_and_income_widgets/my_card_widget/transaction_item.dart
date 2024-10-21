import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/models/transaction_model.dart';
import 'package:flutter_dashboard/core/utils/app_colors.dart';
import 'package:flutter_dashboard/core/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem(
    this.transactionModel, {
    super.key,
  });
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.widgetBackgroundColor,
      elevation: 0,
      margin: EdgeInsets.zero,
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular16(context).copyWith(
            color: AppColors.secondaryTextColor,
          ),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionModel.transactionType == TransactionType.income
                ? const Color(0xff7DD97B)
                : const Color(0xffF3735E),
          ),
        ),
      ),
    );
  }
}
