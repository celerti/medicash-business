import 'package:dashboard/partners/partner_charts.dart';
import 'package:dashboard/partners/store_list.dart';
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
      children: <Widget>[
        Flexible(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Flexible(
              //   flex: 1,
              //   child: PartnerStats()
              // ),
              Flexible(
                flex: 3,
                child: PartnerCharts()
              )
            ],
          ),
        ),
        SizedBox(height: 30),
        Flexible(
          child: StoreList()
        )
      ]
    );
  }
}