import 'package:dashboard/widgets/sidebar_item.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SideBarItem(
          icon: Icons.person,
          name: "Profile",
          routeName: "users",
        )
      ]
    );
  }
}