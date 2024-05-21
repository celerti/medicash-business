import 'package:dashboard/utils/chart_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatsPlot extends StatelessWidget {
  const StatsPlot({super.key});

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      title: ChartTitle(
         text: "Projeção de Ganhos",
         textStyle: GoogleFonts.getFont(
          "Noto Sans",
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.deepPurpleAccent
        )
      ),
      legend: const Legend(
        isVisible: true,
        position: LegendPosition.bottom
      ),
      series: <CartesianSeries>[
        BarSeries<ChartData, double>(
          name: "Projeção",
          dataSource: const [
            ChartData(1, 35),
          ],
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
          color: Colors.green,
        ),
        BarSeries<ChartData, double>(
          name: "Alcançado",
          dataSource: const [
            ChartData(1, 40),
          ],
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
          color: Colors.deepPurpleAccent,
        )
      ],
    );
  }
}