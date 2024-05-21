import 'package:dashboard/widgets/chart_card.dart';
import 'package:flutter/material.dart';

class PartnerCharts extends StatelessWidget {
  const PartnerCharts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ChartCard(header: "Clientes", body: "30", growth: 2.5,),
                ChartCard(header: "Vendas", body: "28", growth: 0.5, increase: false),
                ChartCard(header: "Investimento", body: "R\$1000,00", toggleStats: false),
                ChartCard(header: "Cashback", body: "R\$350,00", growth: 0.1),
              ],
            )
          ),
          const SizedBox(height: 20),
          Flexible(
            flex: 2,
            child: Container(color: Colors.deepPurpleAccent)
          )
        ],
      )
    );
  }
}