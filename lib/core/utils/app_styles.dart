import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_colors.dart';
import 'package:flutter_dashboard/core/utils/size_config.dart';

class AppStyles {
  AppStyles._();

  static TextStyle styleRegular12(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        fontFamily: 'Montserrat',
        color: AppColors.primaryTextColor,
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleRegular14(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontFamily: 'Montserrat',
        color: AppColors.secondaryTextColor,
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleRegular16(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        color: AppColors.primaryTextColor,
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleMedium16(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        color: AppColors.primaryTextColor,
        fontWeight: FontWeight.w500,
      );
  static TextStyle styleSemiBold16(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        color: AppColors.primaryTextColor,
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleBold16(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        color: AppColors.primaryTextColor,
        fontWeight: FontWeight.w700,
      );
  static TextStyle styleSemiBold18(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontFamily: 'Montserrat',
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleMedium20(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontFamily: 'Montserrat',
        color: AppColors.primaryTextColor,
        fontWeight: FontWeight.w500,
      );
  static TextStyle styleSemiBold20(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontFamily: 'Montserrat',
        color: AppColors.primaryTextColor,
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleSemiBold22(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 22),
        fontFamily: 'Montserrat',
        color: AppColors.primaryTextColor,
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleSemiBold24(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontFamily: 'Montserrat',
        color: AppColors.primaryTextColor,
        fontWeight: FontWeight.w600,
      );
}
