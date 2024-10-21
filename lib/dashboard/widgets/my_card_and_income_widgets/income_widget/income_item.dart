import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_styles.dart';

class IncomeItem extends StatelessWidget {
  const IncomeItem({
    super.key,
    required this.title,
    required this.precent,
    required this.colorHex,
  });
  final int colorHex;
  final String title, precent;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Row(
        children: [
          Icon(
            Icons.circle,
            color: Color(colorHex),
          ),
          const SizedBox(width: 12),
          Text(
            title,
            style: AppStyles.styleRegular16(context),
          ),
          const Spacer(),
          Text(
            '$precent%',
            style: AppStyles.styleMedium16(context).copyWith(
              color: const Color(0xff208CC8),
            ),
          )
        ],
      ),
    );
  }
}
