import 'package:dashboard/controllers/sales_controller.dart';
import 'package:dashboard/widgets/dashboard_appbar.dart';
import 'package:dashboard/widgets/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SalesPage extends StatelessWidget {
  const SalesPage({super.key});

  @override
  Widget build(BuildContext context) {
  final SalesController controller = Get.put(SalesController());
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
              child: Obx(() => controller.bodyContent.value)
            )
          ],
        ),
        drawer: isMobile ? const Drawer(child: SideBar()) : null
      );
    });
  }
}