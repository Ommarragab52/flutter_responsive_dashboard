import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_assets.dart';
import 'package:flutter_dashboard/core/utils/app_colors.dart';
import 'package:flutter_dashboard/core/utils/app_styles.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        alignment: Alignment.center,
        decoration: const ShapeDecoration(
            color: AppColors.primaryColor,
            image: DecorationImage(image: AssetImage(Assets.imagesCardShape)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(flex: 2, child: buildCardName(context)),
            const Spacer(),
            Expanded(flex: 2, child: buildCardNumberAndDate(context)),
          ],
        ),
      ),
    );
  }
}

buildCardName(context) {
  return Padding(
    padding: const EdgeInsetsDirectional.only(
      start: 31,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(child: SizedBox(height: 16)),
            Text(
              'Name card',
              style: AppStyles.styleRegular16(context).copyWith(
                color: Colors.white,
              ),
            ),
            Text(
              'Syah Bandi',
              style: AppStyles.styleMedium20(context).copyWith(
                color: Colors.white,
              ),
            )
          ],
        ),
      ],
    ),
  );
}

buildCardNumberAndDate(context) {
  return Padding(
    padding: const EdgeInsetsDirectional.only(end: 24),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '0918 8124 0042 8129',
              style: AppStyles.styleSemiBold22(context).copyWith(
                color: Colors.white,
              ),
            ),
            Text(
              '12/20 - 124',
              style: AppStyles.styleRegular16(context).copyWith(
                color: Colors.white,
              ),
            ),
            const Flexible(child: SizedBox(height: 16)),
          ],
        ),
      ],
    ),
  );
}
