import 'package:dashboard/pages/partner_page.dart';
import 'package:dashboard/pages/routing_pages.dart';
import 'package:dashboard/pages/sales_page.dart';
import 'package:dashboard/pages/users_page.dart';
import 'package:dashboard/sales/sales_details.dart';
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
      initialRoute: MedicashPages.home.value,
      getPages: [
        GetPage(
          name: MedicashPages.home.value,
          page: () => const PartnerPage()
        ),
        GetPage(
          name: MedicashPages.sales.value,
          page: () => const SalesPage()
        ),
        GetPage(
          name: MedicashPages.users.value,
          page: () => const UsersPage()
        ),
        GetPage(
          name: MedicashPages.salesdetails.value,
          page: () => const SalesDetails()
        )
      ],
      debugShowCheckedModeBanner: false,
      title: 'MedicashApp Dashboard',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      )
    );
  }
}