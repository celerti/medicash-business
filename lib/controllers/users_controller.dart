import 'dart:convert';
import 'package:dashboard/models/user.dart';
import 'package:dashboard/users/users_dashboard.dart';
import 'package:dashboard/users/users_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UsersController extends GetxController {
  final UsersDashboard _mainContent = const UsersDashboard();
  late Rx<Widget> bodyContent = Rx<Widget>(_mainContent);

  final _onLoading = true.obs;
  var users = <User>[];

  Rx<bool> get onLoading => _onLoading;

  // @override
  // void onInit() {
  //   super.onInit();
  //   loadUsers();
  // }

  Future<List<User>> _findAll() async {
    var response = await http.get(Uri.http('localhost:8080', '/users'));
    print(response.body);
    if (response.statusCode == 200) {
      Iterable data = jsonDecode(response.body);
      return List<User>.from(data.map((object) => User.fromJson(object)));
    }
    return [];
  }

  void loadUsers() async {
    _onLoading(true);
    users = await _findAll();
    _onLoading(false);
  }

  void toUsersDetails(int index) => bodyContent.value = UsersDetails(user: users[index]);

  void toMain() => bodyContent.value = _mainContent;
}