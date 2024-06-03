import 'package:dashboard/widgets/action_button.dart';
import 'package:dashboard/widgets/card_image.dart';
import 'package:dashboard/widgets/dashboard_text.dart';
import 'package:flutter/material.dart';

class UsersCard extends StatelessWidget {
  final VoidCallback? onTap;
  const UsersCard({super.key,
  this.onTap});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isMobile = constraints.maxWidth < 1000;
      Widget card = Padding(
        padding: const EdgeInsets.only(
          bottom: 10,
          top: 10,
          left: 20,
          right: 20
        ),
        child: Container(
          height: isMobile ? 120 : 150,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.deepPurpleAccent,
              width: 3
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10))
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CardImage(size: isMobile ? 80 : 150),
              Container(
                margin: const EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    DashboardText(
                      text: "Leader Manager",
                      fontFamily: "Noto Sans",
                      size: isMobile ? 16 : 25,
                      fontWeight: FontWeight.bold
                    ),
                    const Row(
                      children: <Widget>[
                        Icon(
                          Icons.store,
                          color: Colors.greenAccent,
                        ),
                        DashboardText(
                          text: "1 gerência cadastrada", 
                          fontFamily: "Noto Sans",
                          size: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ]
                    ),
                    const Row(
                      children: <Widget>[
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.amberAccent,
                        ),
                        DashboardText(
                          text: "15 vendas realizadas", 
                          fontFamily: "Noto Sans",
                          size: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ]
                    ),
                    const Row(
                      children: <Widget>[
                        Icon(
                          Icons.calendar_month_rounded,
                          color: Colors.deepPurpleAccent,
                        ),
                        DashboardText(
                          text: "Cadastrado em: 25/10/2024", 
                          fontFamily: "Noto Sans",
                          size: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ]
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()),
              if (!isMobile)
              Container(
                margin: const EdgeInsets.only(top: 10, right: 10),
                child: ActionButton(
                  icon: Icons.remove_red_eye,
                  onTap: onTap,
                  color: Colors.deepPurple[200],
                  onHoverColor: Colors.deepPurpleAccent,
                ),
              )
            ],
          )
        ),
      );
      if (!isMobile) {
        return card;
      } else {
        return InkWell(
          onTap: onTap,
          child: card
        );
      }
    });
  }
}