import 'package:dashboard/partners/partner_dashboard.dart';
import 'package:dashboard/sales/sales_dashboard.dart';
import 'package:dashboard/widgets/dashboard_appbar.dart';
import 'package:dashboard/widgets/sidebar.dart';
import 'package:flutter/material.dart';

class DashboardHome extends StatefulWidget {
  const DashboardHome({super.key});

  @override
  State<DashboardHome> createState() => DashboardHomeState();
}

class DashboardHomeState extends State<DashboardHome> {
  GlobalKey<ScaffoldState> layoutKey = GlobalKey();
  Widget _homeView = const SalesDashboard(); // TODO: debug 

  void setHomeView(Widget homeView) => setState(() {
    _homeView = homeView;
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DashboardAppBar.newAppBar(context, layoutKey),
      body: Row(
        children: <Widget>[
          const Flexible(
            flex: 1,
            child: SideBar()
          ),
          // home screen
          Flexible(
            flex: 5,
            child: _homeView
          )
        ],
      )
    );
  }
}