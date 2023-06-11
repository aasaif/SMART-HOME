import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles {
  static getTitleData() => const FlTitlesData(
        show: true,
        //------------------------

        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            //reservedSize: 44,
            showTitles: false,
          ),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(
            //reservedSize: 44,
            showTitles: false,
          ),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 8,
            //interval:
          ),
        ),
      );
}
