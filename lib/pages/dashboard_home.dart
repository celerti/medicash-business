import 'package:dashboard/widgets/dashboard_appbar.dart';
import 'package:dashboard/partners/partner_dashboard.dart';
import 'package:dashboard/widgets/sidebar.dart';
import 'package:flutter/material.dart';

class DashboardHome extends StatelessWidget {
  static GlobalKey<ScaffoldState> layoutKey = GlobalKey();
  const DashboardHome ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DashboardAppBar.newAppBar(context, layoutKey),
      body: const Row(
        children: <Widget>[
          // TODO: menu bar
          Flexible(
            flex: 1,
            child: SideBar()
          ),
          // home screen
          Flexible(
            flex: 5,
            child: PartnerDashboard()
          )
        ],
      )
    );
  }
}