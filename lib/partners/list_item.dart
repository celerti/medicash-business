import 'package:dashboard/pages/dashboard_home.dart';
import 'package:dashboard/stores/store_dashboard.dart';
import 'package:dashboard/widgets/dashboard_text.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(top: 5, bottom: 5, right: 20),
      height: 40,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.deepPurpleAccent)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const DashboardText(
            text: "Loja Medicash",
            fontFamily: "Roboto",
            fontWeight: FontWeight.bold,
          ),
          const DashboardText(
            text: "100 vendas",
            fontFamily: "Roboto",
          ),
          const DashboardText(text: "6 usuários", fontFamily: "Roboto"),
          InkWell(
            onTap: (){
              DashboardHomeState? homeState = context.findAncestorStateOfType<DashboardHomeState>();
              homeState?.setHomeView(const StoreDashboard());
            },
            child: const Icon(Icons.remove_red_eye, color: Colors.deepPurpleAccent),
          )
        ],
      ),
    );
  }
}