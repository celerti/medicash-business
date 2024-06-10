import 'package:dashboard/controllers/users_controller.dart';
import 'package:dashboard/users/users_card.dart';
import 'package:dashboard/widgets/dashboard_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UsersDashboard extends StatefulWidget {
  const UsersDashboard({super.key});

  @override
  State<UsersDashboard> createState() => _UsersDashboardState();
}

class _UsersDashboardState extends State<UsersDashboard> {

  @override
  Widget build(BuildContext context) {
    final UsersController controller = Get.find();
    return LayoutBuilder(builder: (context, constraints) {
      bool isMobile = constraints.maxWidth < 1000;
      return Column(
        children: <Widget>[
          // TODO: add search filters
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 40,
                bottom: 20,
                left: 20,
                right: 20
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  DashboardText(text: "Usuários cadastrados",
                    fontFamily: "Noto Sans",
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                    size: isMobile ? 25 : 30,
                  ),
                ],
              ),
            ),
          ),

          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
                top: 10,
                left: 20,
                right: 20
              ),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) { 
                  return UsersCard(
                    onTap: () => controller.toUsersDetails(),
                  );
                }
              ),
            )
          )
        ],
      );
    });  
  }
}