import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_colors.dart';

class AppStyles {
  AppStyles._();
  static const TextStyle styleRegular14 = TextStyle(
    fontSize: 14,
    fontFamily: 'Montserrat',
    color: AppColors.secondaryTextColor,
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleRegular16 = const TextStyle(
    fontSize: 16,
    fontFamily: 'Montserrat',
    color: AppColors.primaryTextColor,
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleMedium16 = const TextStyle(
    fontSize: 16,
    fontFamily: 'Montserrat',
    color: AppColors.primaryTextColor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle styleSemiBold16 = const TextStyle(
    fontSize: 16,
    fontFamily: 'Montserrat',
    color: AppColors.primaryTextColor,
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleBold16 = const TextStyle(
    fontSize: 16,
    fontFamily: 'Montserrat',
    color: AppColors.primaryTextColor,
    fontWeight: FontWeight.w700,
  );
  static TextStyle styleSemiBold18 = const TextStyle(
    fontSize: 18,
    fontFamily: 'Montserrat',
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleSemiBold20 = const TextStyle(
    fontSize: 20,
    fontFamily: 'Montserrat',
    color: AppColors.primaryTextColor,
    fontWeight: FontWeight.w600,
  );
}
