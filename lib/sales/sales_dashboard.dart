import 'package:dashboard/pages/routing_pages.dart';
import 'package:dashboard/sales/sales_card.dart';
import 'package:dashboard/widgets/dashboard_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SalesDashboard extends StatefulWidget {
  const SalesDashboard({super.key});

  @override
  State<SalesDashboard> createState() => _SalesDashboardState();
}

class _SalesDashboardState extends State<SalesDashboard> {

  String? _orderBy;

  @override
  void initState() {
    super.initState();
    _orderBy = "most_recent";
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isMobile = constraints.maxWidth < 1000;
      return Column(
      children: <Widget>[
          // TODO: add search filters
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  DashboardText(text: "Vendas efetuadas",
                    fontFamily: "Noto Sans",
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                    size: isMobile ? 16 : 30,
                  ),
                  Expanded(
                    child: Container()
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const DashboardText(
                        text: "Ordenar por",
                        fontFamily: "Noto Sans",
                        color: Colors.deepPurpleAccent,
                        fontWeight: FontWeight.w600,
                        size: 14,
                      ),
                      DropdownMenu<String>(
                        dropdownMenuEntries: const [
                          DropdownMenuEntry(value: "most_recent", label: "Mais recente"),
                          DropdownMenuEntry(value: "less_recent", label: "Mais antigo"),
                          DropdownMenuEntry(value: "higher_price", label: "Maior preço"),
                          DropdownMenuEntry(value: "lower_price", label: "Menor preço"),
                        ],
                        textStyle: GoogleFonts.getFont(
                          "Noto Sans",
                          color: Colors.black,
                          fontSize: isMobile ? 12 : 16
                        ),
                        onSelected: (String? value) => setState(() {
                          _orderBy = value;
                        }),
                        initialSelection: "most_recent",
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          Flexible(
            flex: 4,
            child: Column(
              children: [
                Flexible(
                  flex: 7,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10,
                      top: 10,
                      left: 20,
                      right: 20
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.deepPurpleAccent,
                          width: 3
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(10))
                      ),
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) { 
                          return SalesCard(
                            redirect: () => Get.toNamed(MedicashPages.salesdetails.value),
                          );
                        }
                      )
                    ),
                  ),
                ),
                Flexible(child: Container())
              ],
            )
          )
        ],
      );
    });  
  }
}