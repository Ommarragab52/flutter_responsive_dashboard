import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_constants.dart';
import 'package:flutter_dashboard/dashboard/widgets/expenses_widget/quick_invoice/custom_title_text_form_field.dart';

class TextFieldsList extends StatelessWidget {
  const TextFieldsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: textFormList.length,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 24,
        mainAxisExtent: 95,
      ),
      itemBuilder: (BuildContext context, int index) =>
          CustomTitleTextFormField(item: textFormList[index]),
    );
  }
}
