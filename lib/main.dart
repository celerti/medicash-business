import 'package:dashboard/pages/dashboard_home.dart';
import 'package:dashboard/pages/dashboard_users.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "home",
      routes: {
        "home": (context) => const DashboardHome(),
        "users": (context) => const DashboardUsers()
      },
      debugShowCheckedModeBanner: false,
      title: 'MedicashApp Dashboard',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DashboardHome()
    );
  }
}