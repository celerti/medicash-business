import 'package:dashboard/users/users_dashboard.dart';
import 'package:dashboard/users/users_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UsersController extends GetxController {
  final UsersDashboard _mainContent = const UsersDashboard();
  late Rx<Widget> bodyContent = Rx<Widget>(_mainContent);

  void toUsersDetails() => bodyContent.value = const UsersDetails();

  void toMain() => bodyContent.value = _mainContent;
}