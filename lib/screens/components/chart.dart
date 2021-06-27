import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_admin/constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: pieChartSectionData,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: defaultPadding,
                ),
                Text(
                  '29.1',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      height: 0.5),
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

List<PieChartSectionData> pieChartSectionData = [
  PieChartSectionData(
    value: 25,
    color: primaryColor,
    radius: 22,
    showTitle: false,
  ),
  PieChartSectionData(
    value: 20,
    color: Color(0xFF26E5FF),
    radius: 19,
    showTitle: false,
  ),
  PieChartSectionData(
    value: 10,
    color: Color(0xFFFFCF26),
    radius: 16,
    showTitle: false,
  ),
  PieChartSectionData(
    value: 15,
    color: Color(0xFFEE2727),
    radius: 13,
    showTitle: false,
  ),
];
