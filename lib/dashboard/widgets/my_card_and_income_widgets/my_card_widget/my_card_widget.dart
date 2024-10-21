import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_constants.dart';
import 'package:flutter_dashboard/core/utils/app_styles.dart';
import 'package:flutter_dashboard/core/widgets/custom_container.dart';
import 'package:flutter_dashboard/dashboard/widgets/my_card_and_income_widgets/my_card_widget/my_card_and_dot_indicator_widget.dart';
import 'package:flutter_dashboard/dashboard/widgets/my_card_and_income_widgets/my_card_widget/transaction_and_see_all_widget.dart';
import 'package:flutter_dashboard/dashboard/widgets/my_card_and_income_widgets/my_card_widget/transaction_list.dart';

class MyCardWidget extends StatefulWidget {
  const MyCardWidget({
    super.key,
  });

  @override
  State<MyCardWidget> createState() => _MyCardWidgetState();
}

class _MyCardWidgetState extends State<MyCardWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My card',
            style: AppStyles.styleSemiBold20(context),
          ),
          const SizedBox(height: 20),
          const MyCardAndDotIndicatorWidget(),
          const Divider(height: 40),
          const TransactionAndSeeAllWidget(),
          const SizedBox(height: 20),
          TransactionList(items: transactionList),
        ],
      ),
    );
  }
}
