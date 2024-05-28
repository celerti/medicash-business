import 'package:dashboard/partners/partner_stats.dart';
import 'package:dashboard/partners/store_list.dart';
import 'package:dashboard/widgets/dashboard_text.dart';
import 'package:dashboard/widgets/stats_plot.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PartnerDashboard extends StatefulWidget {
  const PartnerDashboard({super.key});

  @override
  State<PartnerDashboard> createState() => PartnerDashboardState();
}

class PartnerDashboardState extends State<PartnerDashboard> {

  String? _dateFilter;
  String? _store;

  @override
  void initState() {
    super.initState();
    _dateFilter = "30";
    _store = "";
  }

  void setStore(String store) => setState(() {
    _store = store;
    // TODO: set store stats as well
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isLarge = constraints.maxWidth > 1200;
        return Column(
          children: <Widget>[
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  left: 20,
                  right: 20
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    if (_store!.isNotEmpty)
                    Row(
                      children: [
                        InkWell(
                          child: const Icon(
                            Icons.arrow_circle_left_outlined,
                            color: Colors.deepPurpleAccent,
                          ),
                          onTap: () => setState(() {
                            _store = "";
                          }),
                        ),
                        SizedBox(width: isLarge ? 50 : 10)
                      ],
                    ),
                    DashboardText(
                      text: _store!.isEmpty ? "Todas as lojas" : _store!,
                      color: Colors.deepPurpleAccent,
                      fontFamily: "Noto Sans",
                      size: constraints.maxWidth >= 1200 ? 30 : 15,
                      fontWeight: FontWeight.w700,
                    ),
                    Expanded(
                      child: Container()
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const DashboardText(
                          text: "Filtrar vendas",
                          fontFamily: "Noto Sans",
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.w600,
                          size: 16,
                        ),
                        DropdownMenu<String>(
                          dropdownMenuEntries: const [
                            DropdownMenuEntry(value: "15", label: "Últimos 15 dias"),
                            DropdownMenuEntry(value: "30", label: "Últimos 30 dias"),
                            DropdownMenuEntry(value: "60", label: "Últimos 60 dias"),
                            DropdownMenuEntry(value: "90", label: "Últimos 90 dias"),
                          ],
                          textStyle: GoogleFonts.getFont(
                            "Noto Sans",
                            color: Colors.black,
                            fontSize: isLarge ? 16 : 12
                          ),
                          onSelected: (String? value) => setState(() {
                            _dateFilter = value;
                          }),
                          initialSelection: "30",
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ),
            const Flexible(
              flex: 2,
              child: PartnerStats()
            ),
            Flexible(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Flexible(
                    child: StatsPlot()
                  ),
                  if (constraints.maxWidth > 700)
                  const Flexible(child: StoreList())
                ],
              )
            )
          ]
        );
      },
    );
  }
}