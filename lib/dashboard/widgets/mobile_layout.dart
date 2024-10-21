import 'package:flutter/material.dart';
import 'package:flutter_dashboard/dashboard/widgets/all_exepenses_and_quick_invoice_section.dart';
import 'package:flutter_dashboard/dashboard/widgets/my_card_and_income_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AllExepensesAndQuickInvoiceSection(),
            SizedBox(height: 12),
            MyCardAndIncomeSection(),
          ],
        ),
      ),
    );
  }
}
