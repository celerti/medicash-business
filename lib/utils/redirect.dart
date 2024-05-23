import 'package:dashboard/home/dashboard_users.dart';
import 'package:dashboard/partners/partner_dashboard.dart';
import 'package:dashboard/sales/sales_dashboard.dart';

abstract class Redirect {
  static PartnerDashboard toPartnerDashboard() => const PartnerDashboard();

  static SalesDashboard toSalesDashboard() => const SalesDashboard();

  static DashboardUsers toUsersDashboard() => const DashboardUsers();
}