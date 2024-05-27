import 'package:dashboard/widgets/stats_card.dart';
import 'package:flutter/material.dart';

class PartnerStats extends StatelessWidget {
  const PartnerStats({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return constraints.maxWidth > 1200 ? const Padding (
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            StatsCard(header: "Clientes", body: "30", growth: 2.5,),
            StatsCard(header: "Vendas", body: "28", growth: 0.5, increase: false),
            StatsCard(header: "Investimento", body: "R\$1000,00", toggleStats: false),
            StatsCard(header: "Cashback", body: "R\$350,00", growth: 0.1),
          ],
        ) 
      ) : const Padding (
        padding: EdgeInsets.all(20),
        child : SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              StatsCard(header: "Clientes", body: "30", growth: 2.5,),
              const SizedBox(width: 20),
              StatsCard(header: "Vendas", body: "28", growth: 0.5, increase: false),
              const SizedBox(width: 20),
              StatsCard(header: "Investimento", body: "R\$1000,00", toggleStats: false),
              const SizedBox(width: 20),
              StatsCard(header: "Cashback", body: "R\$350,00", growth: 0.1),
            ],
          ),
        ) 
      );
      }
    );
  }
}