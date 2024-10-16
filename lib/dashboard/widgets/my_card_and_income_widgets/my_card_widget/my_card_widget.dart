import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_assets.dart';
import 'package:flutter_dashboard/core/utils/app_colors.dart';
import 'package:flutter_dashboard/core/utils/app_styles.dart';
import 'package:flutter_dashboard/core/widgets/custom_container.dart';
import 'package:svg_flutter/svg.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My card',
            style: AppStyles.styleSemiBold20,
          ),
          const SizedBox(height: 20),
          Card(
            color: AppColors.primaryColor,
            elevation: 0,
            child: Stack(
              children: [
                SvgPicture.asset(
                  Assets.imagesCardShape,
                  fit: BoxFit.cover,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
