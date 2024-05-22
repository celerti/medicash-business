import 'package:dashboard/widgets/dashboard_text.dart';
import 'package:flutter/material.dart';

class SalesDashboard extends StatefulWidget {
  const SalesDashboard({super.key});

  @override
  State<SalesDashboard> createState() => _SalesDashboardState();
}

class _SalesDashboardState extends State<SalesDashboard> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        Flexible(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                DashboardText(text: "Vendas efetuadas",
                  fontFamily: "Noto Sans",
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.bold,
                  size: 30,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}