import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/models/drawer_model.dart';
import 'package:flutter_dashboard/core/utils/app_colors.dart';
import 'package:flutter_dashboard/core/utils/app_styles.dart';
import 'package:svg_flutter/svg.dart';

class DrawerItem extends StatelessWidget {
  final DrawerModel drawerModel;
  final bool isSelected;
  final Function() onCLick;
  const DrawerItem({
    super.key,
    required this.drawerModel,
    this.isSelected = false,
    required this.onCLick,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 20,
      contentPadding: EdgeInsets.zero,
      title: Text(
        drawerModel.title,
        style: AppStyles.styleBold16.copyWith(
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          color:
              isSelected ? AppColors.primaryColor : AppColors.primaryTextColor,
        ),
      ),
      leading: SvgPicture.asset(drawerModel.icon),
      trailing: isSelected
          ? Container(
              width: 3.27,
              color: AppColors.primaryColor,
            )
          : null,
      onTap: onCLick,
    );
  }
}
