import 'package:dashboard/widgets/dashboard_text.dart';
import 'package:flutter/material.dart';

class StoreStats extends StatelessWidget {
  const StoreStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.topCenter,
            child: const Icon(Icons.person,
              size: 100,
              color: Colors.deepPurpleAccent,
            ),
          ),
        ),
        const SizedBox(height: 10),
        const DashboardText(text: 
          "Loja Medicash",
          fontFamily: "Noto Sans",
          fontWeight: FontWeight.bold,
          size: 20,
        ),
        const SizedBox(height: 20),
        const DashboardText(
          text: "Vendas nos últimos 30 dias:",
          fontFamily: "Noto Sans"
        ),
        const SizedBox(height: 5),
        const DashboardText(text: "50 vendas",
          fontFamily: "Noto Sans",
          fontWeight: FontWeight.bold,
        )
      ],
    );
  }
}