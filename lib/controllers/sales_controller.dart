import 'package:dashboard/sales/sales_dashboard.dart';
import 'package:dashboard/sales/sales_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SalesController extends GetxController {
  final SalesDashboard _mainContent = const SalesDashboard();
  late Rx<Widget> bodyContent = Rx<Widget>(_mainContent);

  void toSalesDetails () => bodyContent.value = const SalesDetails();

  void toMain() => bodyContent.value = _mainContent;

}