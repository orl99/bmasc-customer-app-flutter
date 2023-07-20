import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ChartW extends StatelessWidget {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  List<int> listaData =  [32, 114, 67, 80, 40, 40, 80];
  List<String> monthsData = ['Ene', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul'];

  ChartW({List<int> listaData, List<String> monthsData}): this.listaData = listaData, this.monthsData = monthsData;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Pedimentos', style: TextStyle(fontSize: 30.0, color: Colors.white54)),
          SizedBox(height: 15.0,),
          Container(child: LineChart(this.mainData(listaData, monthsData)), width: double.infinity,)
        ],
      ),
    );
  }

  LineChartData mainData(List<int> listaData, List<String> monthsData) {
    List<FlSpot> spotsData = listaData.asMap().entries.map((e) {
      final rowChatData = FlSpot(e.key.toDouble(), e.value.toDouble());
      return rowChatData;
    }).toList();
    final List<int> listDataCopy = [...listaData];
    listDataCopy.sort();
    // print(listDataCopy.last);

    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          textStyle:
              const TextStyle(color: Color(0xff68737d), fontWeight: FontWeight.bold, fontSize: 16),
          getTitles: (value) {
            // print(value);
            return monthsData.asMap().entries.map((e) {
              if(e.key == value) {
                  return e.value;
              }
            }).toList()[value.toInt()];
          },
          margin: 0,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          textStyle: const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          interval: (listDataCopy.last.toDouble() / 4),
          getTitles: (value) {
            return value.toString();
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData:
          FlBorderData(show: true, border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      minY: 0,
      lineBarsData: [
        LineChartBarData(
          spots: spotsData,
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: true,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors: gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }
}