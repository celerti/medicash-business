import 'package:dashboard/partners/partner_stats.dart';
import 'package:dashboard/partners/store_list.dart';
import 'package:dashboard/widgets/stats_plot.dart';
import 'package:flutter/material.dart';

class PartnerDashboard extends StatefulWidget {
  const PartnerDashboard({super.key});

  @override
  State<PartnerDashboard> createState() => _PartnerDashboardState();
}

class _PartnerDashboardState extends State<PartnerDashboard> {

  @override
  Widget build(BuildContext context) {
    return const Column(
      // TODO: filters
      children: <Widget>[
        Flexible(
          child: PartnerStats()
        ),
        // SizedBox(height: 30),
        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              StatsPlot(),
              StoreList()
            ],
          )
        )
      ]
    );
  }
}