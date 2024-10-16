import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/models/user_info_model.dart';
import 'package:flutter_dashboard/core/utils/app_colors.dart';
import 'package:flutter_dashboard/core/utils/app_styles.dart';
import 'package:svg_flutter/svg.dart';

class CustomProfileListTile extends StatefulWidget {
  const CustomProfileListTile({super.key, required this.userInfo});
  final UserInfoModel userInfo;

  @override
  State<CustomProfileListTile> createState() => _CustomProfileListTileState();
}

class _CustomProfileListTileState extends State<CustomProfileListTile> {
  double truns = 0.0;
  void changeRotation() {
    setState(() {
      truns = truns + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.widgetBackgroundColor,
      elevation: 0,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        leading: AnimatedRotation(
            curve: Curves.easeInBack,
            duration: const Duration(milliseconds: 1000),
            turns: truns,
            child: GestureDetector(
                onTap: changeRotation,
                child: SvgPicture.asset(widget.userInfo.imageUrl))),
        title: Text(widget.userInfo.name),
        titleTextStyle: AppStyles.styleSemiBold16,
        subtitle: Text(widget.userInfo.email),
        subtitleTextStyle: AppStyles.styleRegular14.copyWith(fontSize: 12),
      ),
    );
  }
}
