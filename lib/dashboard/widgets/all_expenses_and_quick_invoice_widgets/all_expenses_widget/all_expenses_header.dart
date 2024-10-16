import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_colors.dart';
import 'package:flutter_dashboard/core/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        const Expanded(child: SizedBox()),
        const CustomDropDownMenu()
      ],
    );
  }
}

class CustomDropDownMenu extends StatefulWidget {
  const CustomDropDownMenu({super.key});

  @override
  State<CustomDropDownMenu> createState() => _CustomDropDownMenuState();
}

class _CustomDropDownMenuState extends State<CustomDropDownMenu> {
  @override
  Widget build(BuildContext context) {
    List<String> items = ['Daily', 'Monthly', 'Yearly'];
    String dropdownValue = items[0];

    return DropdownButtonFormField(
      icon: const Icon(
        Icons.keyboard_arrow_down,
        color: AppColors.primaryTextColor,
      ),
      style: AppStyles.styleMedium16,
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
      items: items.map(
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
