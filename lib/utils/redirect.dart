import 'package:dashboard/pages/dashboard_users.dart';
import 'package:dashboard/partners/partner_dashboard.dart';
import 'package:dashboard/stores/store_dashboard.dart';

abstract class Redirect {
  static PartnerDashboard toPartnerDashboard() => const PartnerDashboard();

  static StoreDashboard toStoreDashboard() => const StoreDashboard();

  static DashboardUsers toUsersDashboard() => const DashboardUsers();
}