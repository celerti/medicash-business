import 'package:dashboard/pages/partner_page.dart';
import 'package:dashboard/pages/sales_page.dart';
import 'package:dashboard/partners/partner_dashboard.dart';
import 'package:dashboard/sales/sales_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // TODO: refactor to stateful, so we can impl login (?)
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/home",
      getPages: [
        GetPage(
          name: "/home",
          page: () => const PartnerPage()
        ),
        GetPage(
          name: "/sales",
          page: () => const SalesPage()
        )
      ],
      debugShowCheckedModeBanner: false,
      title: 'MedicashApp Dashboard',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}