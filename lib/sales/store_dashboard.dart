import 'package:dashboard/widgets/action_card.dart';
import 'package:dashboard/widgets/dashboard_text.dart';
import 'package:flutter/material.dart';

class SalesDashboard extends StatefulWidget {
  const SalesDashboard({super.key});

  @override
  State<SalesDashboard> createState() => _SalesDashboardState();
}

class _SalesDashboardState extends State<SalesDashboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // TODO: add search filters
        const Flexible(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                DashboardText(text: "Vendas efetuadas",
                  fontFamily: "Noto Sans",
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.bold,
                  size: 30,
                )
              ],
            ),
          ),
        ),

        Flexible(
          flex: 2,
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
                itemBuilder: (context, index) => ActionCard()
              )
            ),
          )
        )
      ],
    );
  }
}