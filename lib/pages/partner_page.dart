import 'package:dashboard/partners/partner_dashboard.dart';
import 'package:dashboard/widgets/dashboard_appbar.dart';
import 'package:dashboard/widgets/sidebar.dart';
import 'package:flutter/material.dart';

class PartnerPage extends StatefulWidget {
  const PartnerPage({super.key});

  @override
  State<PartnerPage> createState() => PartnerPageState();
}

class PartnerPageState extends State<PartnerPage> {
  GlobalKey<ScaffoldState> layoutKey = GlobalKey();
  Widget _homeView = const PartnerDashboard();

  void setHomeView(Widget homeView) => setState(() {
    _homeView = homeView;
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isMobile = constraints.maxWidth < 1400;
      return Scaffold(
        appBar: DashboardAppBar.newAppBar(context, layoutKey),
        body: Row(
          children: <Widget>[
            if (!isMobile)
            const Flexible(
              flex: 1,
              child: SideBar()
            ),
            // home screen
            Flexible(
              flex: isMobile ? 1 : 5,
              child: _homeView
            )
          ],
        ),
        drawer: isMobile ? Drawer(child: const SideBar()) : null
      );
    });
  }
}