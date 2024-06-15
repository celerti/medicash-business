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
  RxList<User> users = <User>[].obs;

  Rx<bool> get onLoading => _onLoading;

  late Rx<User> patchRequest;

  Future<RxList<User>> _findAll() async {
    var response = await http.get(Uri.http('localhost:8080', '/users'));
    if (response.statusCode == 200) {
      var data =
          (jsonDecode(response.body) as List).cast<Map<String, dynamic>>();
      var users =
          data.map<User>((object) => User.fromJson(object)).toList().obs;
      return users;
    }
    return <User>[].obs;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadUsers();
  }

  void loadUsers() async {
    _onLoading(true);
    users = await _findAll();
    _onLoading(false);
  }

  void patchUser(User user) async {
    var body = jsonEncode(patchRequest.value.toJson());
    await http.patch(
      Uri.http('localhost:8080', '/users/${user.id}'),
      body: body,
      headers: {
        'Content-Type': 'application/json',
      },
    );
  }

  void toUsersDetails(int index) {
    patchRequest = User().obs;
    bodyContent.value = UsersDetails(user: users[index]);
  }

  void toMain() => bodyContent.value = _mainContent;
}
