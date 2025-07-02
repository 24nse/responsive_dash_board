import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class IncomeChart extends HookWidget {
  const IncomeChart({super.key});

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
            showTitle: false,
            value: 40,
            radius: activeIndex.value == 0 ? 60 : 50,
            color: const Color(0xFF208BC7),
          ),
          PieChartSectionData(
            value: 25,
            radius: activeIndex.value == 1 ? 60 : 50,
            showTitle: false,
            color: const Color(0xFF4DB7F2),
          ),
          PieChartSectionData(
            value: 20,
            radius: activeIndex.value == 2 ? 60 : 50,
            showTitle: false,
            color: const Color(0xFF064060),
          ),
          PieChartSectionData(
            value: 22,
            radius: activeIndex.value == 3 ? 60 : 50,
            showTitle: false,
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
