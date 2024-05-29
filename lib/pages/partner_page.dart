import 'package:dashboard/partners/partner_dashboard.dart';
import 'package:dashboard/widgets/dashboard_appbar.dart';
import 'package:dashboard/widgets/sidebar.dart';
import 'package:flutter/material.dart';

class PartnerPage extends StatelessWidget {
  const PartnerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isMobile = constraints.maxWidth < 1400;
      return Scaffold(
        appBar: DashboardAppBar.newAppBar(context),
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
              child: const PartnerDashboard()
            )
          ],
        ),
        drawer: isMobile ? const Drawer(child: SideBar()) : null
      );
    });
  }
}