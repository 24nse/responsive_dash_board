import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DetailedIncomeChart extends HookWidget {
  const DetailedIncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    final activeIndex = useState(-1);
    PieChartData getChartData() {
      return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pietouchResponse) {
            activeIndex.value = pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex.value == 0 ? 1.5 : null,
            title: activeIndex.value == 0 ? 'Design service' : '40%',
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex.value == 0 ? null : Colors.white),
            radius: activeIndex.value == 0 ? 60 : 50,
            value: 40,
            color: const Color(0xFF208BC7),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex.value == 1 ? 2.2 : null,
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex.value == 1 ? null : Colors.white),
            title: activeIndex.value == 1 ? 'Design product' : '25%',
            value: 25,
            radius: activeIndex.value == 1 ? 60 : 50,
            color: const Color(0xFF4DB7F2),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex.value == 2 ? 1.4 : null,
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex.value == 2 ? null : Colors.white),
            title: activeIndex.value == 2 ? 'Product royalti' : '20%',
            value: 20,
            radius: activeIndex.value == 2 ? 60 : 50,
            color: const Color(0xFF064060),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex.value == 3 ? 1.4 : null,
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex.value == 3 ? null : Colors.white),
            title: activeIndex.value == 3 ? 'Other' : '22%',
            value: 22,
            radius: activeIndex.value == 3 ? 60 : 50,
            color: const Color(0xFFE2DECD),
          ),
        ],
      );
    }
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }
}
