import 'package:admin_dashboard/core/constants/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: .0,
              centerSpaceRadius: 70.0,
              startDegreeOffset: -90.0,
              sections: pieChartSelectionDatas,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '29.1',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                ),
                Text('of 128GB'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieChartSelectionDatas = [
  PieChartSectionData(
    value: 25.0,
    color: AppColors.primaryColor,
    showTitle: false,
    radius: 25.0,
  ),
  PieChartSectionData(
    value: 20.0,
    color: AppColors.aSectionColor,
    showTitle: false,
    radius: 22.0,
  ),
  PieChartSectionData(
    value: 10.0,
    color: AppColors.bSectionColor,
    showTitle: false,
    radius: 19.0,
  ),
  PieChartSectionData(
    value: 15.0,
    color: AppColors.cSectionColor,
    showTitle: false,
    radius: 16.0,
  ),
  PieChartSectionData(
    value: 15.0,
    color: AppColors.primaryColor.withValues(alpha: .1),
    showTitle: false,
    radius: 13.0,
  ),
];
