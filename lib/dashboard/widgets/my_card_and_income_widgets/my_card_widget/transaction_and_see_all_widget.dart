import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_colors.dart';
import 'package:flutter_dashboard/core/utils/app_styles.dart';

class TransactionAndSeeAllWidget extends StatelessWidget {
  const TransactionAndSeeAllWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'See all',
            style: AppStyles.styleMedium16(context)
                .copyWith(color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
