import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_applications/utils/line_titles.dart';

class FiChartPage extends StatefulWidget {
  const FiChartPage({Key? key}) : super(key: key);

  @override
  _FiChartPageState createState() => _FiChartPageState();
}

class _FiChartPageState extends State<FiChartPage> {
  /* List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];*/
  @override
  Widget build(BuildContext context) {
    return
        //backgroundColor: Color(0xFF4D7480),
        Center(
      child: SizedBox(
        width: 320,
        height: 200,
        child: LineChart(
          LineChartData(
            borderData: FlBorderData(show: false),

            maxX: 7,
            maxY: 6,
            minY: 0,
            minX: 0,
            titlesData: LineTitles.getTitleData(),
            //backgroundColor: Color(0xFF4D7480),
            gridData: FlGridData(
              horizontalInterval: 1,
              //drawHorizontalLine: true,
              show: true,
              getDrawingHorizontalLine: (value) {
                return const FlLine(
                  color: Colors.grey,
                  strokeWidth: 2,
                );
              },
            ),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  const FlSpot(0, 3),
                  const FlSpot(1, 3.5),
                  const FlSpot(2, 4.3),
                  const FlSpot(3, 3.2),
                  const FlSpot(4, 2.8),
                  const FlSpot(5, 2.9),
                  const FlSpot(6, 4),
                  const FlSpot(7, 3.5),
                ],
                isCurved: true,
                barWidth: 3,
                color: Colors.white,
                dotData: const FlDotData(
                    //show: false,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
