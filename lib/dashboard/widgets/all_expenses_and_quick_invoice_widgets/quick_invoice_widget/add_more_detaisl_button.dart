import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_colors.dart';
import 'package:flutter_dashboard/core/utils/app_styles.dart';

class AddMoreDetaislButton extends StatelessWidget {
  const AddMoreDetaislButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          fixedSize: const WidgetStatePropertyAll(Size.fromHeight(50)),
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))),
      onPressed: () {},
      child: Text(
        'Add more details',
        style: AppStyles.styleSemiBold16(context)
            .copyWith(color: AppColors.primaryColor),
      ),
    );
  }
}
