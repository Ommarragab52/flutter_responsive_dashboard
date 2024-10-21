import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_colors.dart';
import 'package:flutter_dashboard/core/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: ShapeDecoration(
            color: Colors.black.withOpacity(0.02),
            shape: const CircleBorder(),
          ),
          child: const Icon(
            Icons.add,
            size: 18,
            color: AppColors.primaryColor,
          ),
        )
      ],
    );
  }
}
