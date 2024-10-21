import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/size_config.dart';

class AdaptiveBodyLayout extends StatelessWidget {
  const AdaptiveBodyLayout({
    super.key,
    required this.mobilelayout,
    required this.tabletlayout,
    required this.desktoplayout,
  });
  final WidgetBuilder mobilelayout, tabletlayout, desktoplayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < SizeConfig.tabletBreakpoint) {
          return mobilelayout(context);
        } else if (constraints.maxWidth < SizeConfig.desktopBreakpoint) {
          return tabletlayout(context);
        } else {
          return desktoplayout(context);
        }
      },
    );
  }
}
