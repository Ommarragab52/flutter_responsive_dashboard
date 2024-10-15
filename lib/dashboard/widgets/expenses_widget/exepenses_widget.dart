import 'package:flutter/material.dart';
import 'package:flutter_dashboard/dashboard/widgets/expenses_widget/all_expenses/all_expenses.dart';
import 'package:flutter_dashboard/dashboard/widgets/expenses_widget/quick_invoice/quick_invoice.dart';

class ExepensesWidget extends StatelessWidget {
  const ExepensesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: AllExpenses()),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverToBoxAdapter(child: QuickInvoice()),
      ],
    );
  }
}
