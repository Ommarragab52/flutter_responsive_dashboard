import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/dashboard/widgets/my_card_and_income_widgets/my_card_widget/card_item.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      controller: pageController,
      itemCount: 3,
      scrollBehavior: const ScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse},
      ),
      itemBuilder: (context, index) => const CardItem(),
      onPageChanged: (page) => pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      ),
    );
  }
}
