import 'package:flutter/material.dart';
import 'package:flutter_dashboard/dashboard/widgets/all_expenses_and_quick_invoice_widgets/quick_invoice_widget/custom_title_text_form_field.dart';

class TextFields extends StatelessWidget {
  const TextFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Row(
        children: [
          Expanded(
            child: CustomTitleTextFormField(
                title: 'Customer name', hint: 'Type customer name'),
          ),
          SizedBox(width: 16),
          Expanded(
            child: CustomTitleTextFormField(
                title: 'Customer Email', hint: 'Type customer email'),
          ),
        ],
      ),
      SizedBox(height: 16),
      Row(
        children: [
          Expanded(
              child: CustomTitleTextFormField(
                  title: 'Item name', hint: 'Type item name')),
          SizedBox(width: 16),
          Expanded(
              child:
                  CustomTitleTextFormField(title: 'Item mount', hint: 'USD')),
        ],
      ),
    ]);
  }
}
