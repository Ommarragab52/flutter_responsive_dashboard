import 'package:flutter/material.dart';

class SizeConfig {
  static const double tabletBreakpoint = 850;
  static const double desktopBreakpoint = 1200;
}

getResponsiveFontSize(
  BuildContext context, {
  required double fontSize,
}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * fontSize;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize = responsiveFontSize.clamp(lowerLimit, upperLimit);
}

getScaleFactor(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tabletBreakpoint) {
    return width / 550;
  } else if (width < SizeConfig.desktopBreakpoint) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
