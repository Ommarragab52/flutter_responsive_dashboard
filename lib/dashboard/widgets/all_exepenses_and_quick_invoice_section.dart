import 'package:flutter/material.dart';
import 'package:flutter_dashboard/dashboard/widgets/all_expenses_and_quick_invoice_widgets/all_expenses_widget/all_expenses_widget.dart';
import 'package:flutter_dashboard/dashboard/widgets/all_expenses_and_quick_invoice_widgets/quick_invoice_widget/quick_invoice_widget.dart';

class AllExepensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExepensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 40)),
        SliverToBoxAdapter(child: AllExpensesWidget()),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverToBoxAdapter(child: QuickInvoiceWidget()),
        SliverToBoxAdapter(child: SizedBox(height: 40)),
      ],
    );
  }
}
