import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_colors.dart';
import 'package:flutter_dashboard/core/utils/app_styles.dart';

class AddMoreDetaislButton extends StatelessWidget {
  const AddMoreDetaislButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 53, vertical: 20),
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Add more details',
          style:
              AppStyles.styleMedium16.copyWith(color: AppColors.primaryColor),
        ),
      ),
    );
  }
}
