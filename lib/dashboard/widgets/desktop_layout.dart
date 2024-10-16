import 'package:flutter/material.dart';
import 'package:flutter_dashboard/dashboard/widgets/all_exepenses_and_quick_invoice_section.dart';
import 'package:flutter_dashboard/dashboard/widgets/custom_drawer.dart';
import 'package:flutter_dashboard/dashboard/widgets/my_card_and_income_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 2, child: AllExepensesAndQuickInvoiceSection()),
        SizedBox(width: 32),
        Expanded(child: MyCardAndIncomeSection()),
      ],
    );
  }
}
