import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_colors.dart';
import 'package:flutter_dashboard/dashboard/widgets/adaptive_body_layout.dart';
import 'package:flutter_dashboard/dashboard/widgets/desktop_layout.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: AdaptiveBodyLayout(
        mobilelayout: (BuildContext context) => Container(),
        tabletlayout: (BuildContext context) => Container(),
        desktoplayout: (BuildContext context) => const DesktopLayout(),
      ),
    );
  }
}
