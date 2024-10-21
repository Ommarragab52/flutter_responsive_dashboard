import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_colors.dart';
import 'package:flutter_dashboard/core/utils/app_styles.dart';

class CustomTextAndDropdownMenuHeaderWidget extends StatelessWidget {
  const CustomTextAndDropdownMenuHeaderWidget({
    super.key,
    required this.title,
    required this.dropdownMenuItems,
  });
  final String title;
  final List<String> dropdownMenuItems;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        CustomDropDownMenu(
          dropdownMenuItems: dropdownMenuItems,
        )
      ],
    );
  }
}

class CustomDropDownMenu extends StatefulWidget {
  const CustomDropDownMenu({super.key, required this.dropdownMenuItems});
  final List<String> dropdownMenuItems;

  @override
  State<CustomDropDownMenu> createState() => _CustomDropDownMenuState();
}

class _CustomDropDownMenuState extends State<CustomDropDownMenu> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = widget.dropdownMenuItems[0];
    return DropdownButtonFormField(
      dropdownColor: Colors.white,
      icon: const Icon(
        Icons.keyboard_arrow_down,
        color: AppColors.primaryTextColor,
      ),
      style: AppStyles.styleMedium16(context),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.borderColor),
        ),
        constraints: const BoxConstraints(maxWidth: 135),
      ),
      value: dropdownValue,
      onChanged: (value) {
        setState(() {
          dropdownValue = value.toString();
        });
      },
      items: widget.dropdownMenuItems.map(
        (value) {
          return DropdownMenuItem(
            value: value,
            child: Text(value),
          );
        },
      ).toList(),
    );
  }
}
