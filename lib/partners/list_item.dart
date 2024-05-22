import 'package:dashboard/partners/partner_dashboard.dart';
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
            fontFamily: "Noto Sans",
            fontWeight: FontWeight.bold,
          ),
          const DashboardText(
            text: "100 vendas",
            fontFamily: "Noto Sans",
          ),
          const DashboardText(text: "6 usuários", fontFamily: "Noto Sans"),
          Row(
            children: [
              InkWell(
                onTap: (){
                  PartnerDashboardState? dashboardState = context.findAncestorStateOfType<PartnerDashboardState>();
                  dashboardState?.setStore("Loja Medicash");
                },
                child: const Icon(Icons.remove_red_eye, color: Colors.deepPurpleAccent),
              ),
              InkWell(
                onTap: (){
                  // TODO: redirect to edit form
                },
                child: const Icon(Icons.edit_rounded, color: Colors.deepPurpleAccent),
              )
            ],
          )
        ],
      ),
    );
  }
}