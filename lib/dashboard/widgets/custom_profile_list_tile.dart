import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/models/user_info_model.dart';
import 'package:flutter_dashboard/core/utils/app_colors.dart';
import 'package:flutter_dashboard/core/utils/app_styles.dart';
import 'package:svg_flutter/svg.dart';

class CustomProfileListTile extends StatelessWidget {
  const CustomProfileListTile({super.key, required this.userInfo});
  final UserInfoModel userInfo;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.widgetBackgroundColor,
      elevation: 0,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        leading: SvgPicture.asset(userInfo.imageUrl),
        title: Text(userInfo.name),
        titleTextStyle: AppStyles.styleSemiBold16,
        subtitle: Text(userInfo.email),
        subtitleTextStyle: AppStyles.styleRegular14.copyWith(fontSize: 12),
      ),
    );
  }
}
