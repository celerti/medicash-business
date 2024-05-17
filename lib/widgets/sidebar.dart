import 'package:dashboard/partners/partner_dashboard.dart';
import 'package:dashboard/stores/store_dashboard.dart';
import 'package:dashboard/widgets/sidebar_item.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        SideBarItem(
          icon: Icons.person_outlined,
          name: "Área do Parceiro",
          destination: PartnerDashboard(),
        ),
        SideBarItem(icon: Icons.shopping_cart_checkout_outlined, 
          name: "Lojas",
          destination: StoreDashboard()
        ),
        SideBarItem(
          icon: Icons.people_outline_sharp,
          name: "Usuários",
          destination: Placeholder()
        ),
      ]
    );
  }
}