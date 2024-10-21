import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_colors.dart';
import 'package:flutter_dashboard/dashboard/widgets/adaptive_body_layout.dart';
import 'package:flutter_dashboard/dashboard/widgets/custom_drawer.dart';
import 'package:flutter_dashboard/dashboard/desktop/desktop_layout.dart';
import 'package:flutter_dashboard/dashboard/mobile/mobile_layout.dart';
import 'package:flutter_dashboard/dashboard/tablet/tablet_layout.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.backgroundColor,
      appBar: width < 850
          ? AppBar(
              leading: DrawerButton(
                onPressed: () {
                  scaffoldKey.currentState?.openDrawer();
                },
              ),
              surfaceTintColor: Colors.transparent,
              backgroundColor: AppColors.widgetBackgroundColor,
            )
          : null,
      drawer: SizedBox(width: width * 0.6, child: const CustomDrawer()),
      body: AdaptiveBodyLayout(
        mobilelayout: (BuildContext context) => const MobileLayout(),
        tabletlayout: (BuildContext context) => const TabletLayout(),
        desktoplayout: (BuildContext context) => const DesktopLayout(),
      ),
    );
  }
}
