import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/app_colors.dart';
import 'package:flutter_dashboard/core/utils/app_constants.dart';
import 'package:flutter_dashboard/core/utils/app_styles.dart';
import 'package:flutter_dashboard/core/utils/size_config.dart';

class CustomPieChart extends StatefulWidget {
  const CustomPieChart({
    super.key,
    required this.showDetails,
  });
  final bool showDetails;
  @override
  State<CustomPieChart> createState() => _CustomPieChartState();
}

class _CustomPieChartState extends State<CustomPieChart> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          sectionsSpace: 0,
          pieTouchData: PieTouchData(
            touchCallback: (flTouchEvent, pieTouchResponse) {
              if (pieTouchResponse != null) {
                touchedIndex =
                    pieTouchResponse.touchedSection!.touchedSectionIndex;
                setState(() {});
              }
            },
          ),
          sections: incomeChartItems
              .asMap()
              .entries
              .map(
                (item) => PieChartSectionData(
                  titlePositionPercentageOffset: 0.5,
                  title: width <= SizeConfig.desktopBreakpoint || width > 1420
                      ? '${item.value.precent}%'
                      : '${item.value.title}\n${item.value.precent}%',
                  value: item.value.precent.toDouble(),
                  color: Color(item.value.color),
                  radius: touchedIndex == item.key ? 35 : 25,
                  showTitle:
                      touchedIndex == item.key || widget.showDetails == true
                          ? true
                          : false,
                  titleStyle: AppStyles.styleRegular16(context).copyWith(
                    fontWeight: FontWeight.w600,
                    color: item.value.color == AppColors.primaryTextColor.value
                        ? Colors.white
                        : AppColors.primaryTextColor,
                    shadows:
                        item.value.color == AppColors.primaryTextColor.value
                            ? [
                                const BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 1,
                                    offset: Offset(1, 1)),
                              ]
                            : null,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
