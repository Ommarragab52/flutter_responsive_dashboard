import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_colors.dart';
import 'package:flutter_dashboard/core/utils/app_styles.dart';

class CustomTitleTextFormField extends StatelessWidget {
  const CustomTitleTextFormField({
    super.key,
    required this.title,
    required this.hint,
  });
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(height: 12),
        TextFormField(
          style: AppStyles.styleMedium16(context).copyWith(
            color: Colors.black,
          ),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: AppStyles.styleRegular16(context).copyWith(
              color: AppColors.secondaryTextColor,
            ),
            fillColor: AppColors.widgetBackgroundColor,
            filled: true,
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.widgetBackgroundColor),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
