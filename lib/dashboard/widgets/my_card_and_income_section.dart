import 'package:flutter/material.dart';
import 'package:flutter_dashboard/dashboard/widgets/my_card_and_income_widgets/my_card_widget/my_card_widget.dart';

class MyCardAndIncomeSection extends StatelessWidget {
  const MyCardAndIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 40)),
        SliverToBoxAdapter(child: MyCardWidget()),
      ],
    );
  }
}
