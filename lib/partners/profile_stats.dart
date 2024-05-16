import 'package:dashboard/widgets/dashboard_text.dart';
import 'package:flutter/material.dart';

class ProfileStats extends StatelessWidget {
  const ProfileStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
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
          "MedicashApp Partner",
          fontFamily: "Roboto",
          fontWeight: FontWeight.bold,
          size: 20,
        ),
        const SizedBox(height: 20),
        const DashboardText(text: "5 lojas cadastradas",
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w400
        ),
        const SizedBox(height: 20),
        const DashboardText(text: "Cashback nos últimos 30 dias:",
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w400,
        ),
        const SizedBox(height: 5),
        const DashboardText(text: "R\$1600,00",
          fontFamily: "Montserrat",
          fontWeight: FontWeight.bold,
          size: 20
        )
      ],
    );
  }
}