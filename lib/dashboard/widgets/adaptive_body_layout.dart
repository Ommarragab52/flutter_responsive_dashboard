import 'package:flutter/material.dart';

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
        if (constraints.maxWidth < 600) {
          return mobilelayout(context);
        } else if (constraints.maxWidth < 900) {
          return tabletlayout(context);
        } else {
          return desktoplayout(context);
        }
      },
    );
  }
}
