import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_colors.dart';
import 'package:flutter_dashboard/dashboard/widgets/my_card_and_income_widgets/my_card_widget/my_card_page_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyCardAndDotIndicatorWidget extends StatefulWidget {
  const MyCardAndDotIndicatorWidget({
    super.key,
  });

  @override
  State<MyCardAndDotIndicatorWidget> createState() =>
      _MyCardAndDotIndicatorWidgetState();
}

class _MyCardAndDotIndicatorWidgetState
    extends State<MyCardAndDotIndicatorWidget> {
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyCardPageView(pageController: pageController),
        const SizedBox(height: 19),
        SmoothPageIndicator(
          controller: pageController,
          effect: const ExpandingDotsEffect(
            activeDotColor: AppColors.primaryColor,
            dotColor: Colors.black12,
            expansionFactor: 4,
            dotHeight: 8,
            dotWidth: 8,
          ),
          count: 3,
        ),
      ],
    );
  }
}
