import 'package:dashboard/partners/partner_charts.dart';
import 'package:dashboard/partners/profile_stats.dart';
import 'package:flutter/material.dart';

class PartnerDashboard extends StatefulWidget {
  const PartnerDashboard({super.key});

  @override
  State<PartnerDashboard> createState() => _PartnerDashboardState();
}

class _PartnerDashboardState extends State<PartnerDashboard> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: ProfileStats()
              ),
              Flexible(
                child: PartnerCharts()
              )
            ],
          ),
        ),
        const SizedBox(height: 30),
        Flexible(child: Container(color: Colors.black))
      ]
    );
  }
}