import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/models/expenses_model.dart';
import 'package:flutter_dashboard/core/utils/app_colors.dart';
import 'package:flutter_dashboard/core/utils/app_styles.dart';
import 'package:svg_flutter/svg.dart';

class ExpensesItem extends StatefulWidget {
  final ExpensesModel item;
  final bool isSelected;
  final Function() onClick;
  const ExpensesItem({
    super.key,
    required this.item,
    required this.isSelected,
    required this.onClick,
  });

  @override
  State<ExpensesItem> createState() => _ExpensesItemState();
}

class _ExpensesItemState extends State<ExpensesItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onClick();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        decoration: ShapeDecoration(
          color: widget.isSelected ? AppColors.primaryColor : Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(
                color: widget.isSelected
                    ? AppColors.primaryColor
                    : AppColors.borderColor,
                width: 1,
              )),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildItemHeader(widget.item, widget.isSelected),
            const SizedBox(height: 34),
            buildItemBody(context, widget.item, widget.isSelected),
          ],
        ),
      ),
    );
  }
}

buildItemHeader(ExpensesModel item, bool isSelected) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Flexible(
        child: CircleAvatar(
            radius: 32,
            backgroundColor: isSelected
                ? Colors.white.withOpacity(0.1)
                : Colors.black.withOpacity(0.03),
            child: SvgPicture.asset(
              item.image,
              colorFilter: isSelected
                  ? const ColorFilter.mode(Colors.white, BlendMode.srcIn)
                  : const ColorFilter.mode(
                      AppColors.primaryColor,
                      BlendMode.srcIn,
                    ),
            )),
      ),
      const Spacer(),
      Flexible(
        child: Icon(
          Icons.arrow_forward_ios_outlined,
          color: isSelected ? Colors.white : AppColors.primaryTextColor,
          size: 24,
        ),
      )
    ],
  );
}

Column buildItemBody(context, ExpensesModel item, bool isSelected) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(
          item.expensesType,
          style: AppStyles.styleSemiBold16(context).copyWith(
            color: isSelected ? Colors.white : AppColors.primaryTextColor,
          ),
        ),
      ),
      const SizedBox(height: 8),
      FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(
          item.date,
          style: AppStyles.styleRegular14(context).copyWith(
            color: isSelected ? Colors.white : AppColors.secondaryTextColor,
          ),
        ),
      ),
      const SizedBox(height: 16),
      FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(
          item.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            fontWeight: FontWeight.w600,
            color: isSelected ? Colors.white : AppColors.primaryColor,
          ),
        ),
      ),
    ],
  );
}
