import 'package:flutter/material.dart';
import 'package:flutter_dashboard/dashboard/widgets/expenses_widget/exepenses_widget.dart';
import 'package:flutter_dashboard/dashboard/widgets/custom_drawer/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 3, child: ExepensesWidget())
      ],
    );
  }
}
