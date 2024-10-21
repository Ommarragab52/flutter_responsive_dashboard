import 'package:flutter/material.dart';
import 'package:flutter_dashboard/dashboard/widgets/custom_drawer.dart';
import 'package:flutter_dashboard/dashboard/widgets/mobile_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 24),
        Expanded(
          flex: 2,
          child: MobileLayout(),
        ),
        SizedBox(width: 12),
      ],
    );
  }
}
