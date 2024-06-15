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
  final UsersController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isMobile = constraints.maxWidth < 1000;
      return Column(
        children: <Widget>[
          // TODO: add search filters
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 40, bottom: 20, left: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  DashboardText(
                    text: controller.onLoading.value
                        ? "Carregando..."
                        : "${controller.users.value.length} usuários cadastrados",
                    fontFamily: "Noto Sans",
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                    size: isMobile ? 25 : 30,
                  ),
                ],
              ),
            ),
          ),

          if (!controller.onLoading.value)
            Flexible(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 10, top: 10, left: 20, right: 20),
                  child: ListView.builder(
                      itemCount: controller.users.length,
                      itemBuilder: (context, index) {
                        var user = controller.users[index];
                        return UsersCard(
                          name: user.fullName,
                          createdAt: user.createdAt,
                          onTap: () => controller.toUsersDetails(index),
                        );
                      }),
                ))
        ],
      );
    });
  }
}
