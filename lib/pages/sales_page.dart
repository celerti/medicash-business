import 'package:dashboard/sales/sales_dashboard.dart';
import 'package:dashboard/widgets/dashboard_appbar.dart';
import 'package:dashboard/widgets/sidebar.dart';
import 'package:flutter/material.dart';

class SalesPage extends StatefulWidget {
  const SalesPage({super.key});

  @override
  State<SalesPage> createState() => SalesPageState();
}

class SalesPageState extends State<SalesPage> {
  GlobalKey<ScaffoldState> layoutKey = GlobalKey();
  Widget _homeView = const SalesDashboard(); // we can use it instead of modals...

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