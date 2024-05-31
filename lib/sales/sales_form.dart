import 'package:dashboard/widgets/dashboard_text.dart';
import 'package:flutter/material.dart';

class SalesForm extends StatelessWidget {
  const SalesForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                  right: 30
                ),
                height: 100,
                width: 200,
                child: TextFormField(
                  initialValue: "Leader Laboratory",
                  decoration: InputDecoration(
                    label: const DashboardText(
                      text: "Produto",
                      fontFamily: "Noto Sans",
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.w700,
                      size: 16,
                    ),
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.green[500],
                      size: 40,
                    )
                  ),
                  readOnly: true
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 30,
                  right: 30
                ),
                height: 100,
                width: 200,
                child: TextFormField(
                  initialValue: "31/05/2024",
                  decoration: InputDecoration(
                    label: const DashboardText(
                      text: "Data",
                      fontFamily: "Noto Sans",
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.w700,
                      size: 16,
                    ),
                    icon: Icon(
                      Icons.calendar_month_rounded,
                      color: Colors.green[500],
                      size: 40,
                    )
                  ),
                  readOnly: true
                )
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 30,
                  right: 30
                ),
                height: 100,
                width: 300,
                child: TextFormField(
                  initialValue: "MedicashApp Store",
                  decoration: InputDecoration(
                    label: const DashboardText(
                      text: "Loja",
                      fontFamily: "Noto Sans",
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.w700,
                      size: 16,
                    ),
                    icon: Icon(
                      Icons.location_on,
                      color: Colors.green[500],
                      size: 40,
                    )
                  ),
                  readOnly: true
                )
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                  right: 30
                ),
                height: 100,
                width: 400,
                child: TextFormField(
                  initialValue: "MedicashApp Client",
                  decoration: InputDecoration(
                    label: const DashboardText(
                      text: "Nome do cliente",
                      fontFamily: "Noto Sans",
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.w700,
                      size: 16,
                    ),
                    icon: Icon(
                      Icons.person,
                      color: Colors.green[500],
                      size: 40,
                    )
                  ),
                  readOnly: true
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  right: 30
                ),
                height: 100,
                width: 200,
                child: TextFormField(
                  initialValue: "Pix",
                  decoration: InputDecoration(
                    label: const DashboardText(
                      text: "Forma de pagamento",
                      fontFamily: "Noto Sans",
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.w700,
                      size: 16,
                    ),
                    icon: Icon(
                      Icons.payment,
                      color: Colors.green[500],
                      size: 40,
                    )
                  ),
                  readOnly: true
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  right: 30
                ),
                height: 100,
                width: 200,
                child: TextFormField(
                  initialValue: "R\$ 100,00",
                  decoration: InputDecoration(
                    label: const DashboardText(
                      text: "Valor",
                      fontFamily: "Noto Sans",
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.w700,
                      size: 16,
                    ),
                    icon: Icon(
                      Icons.paid,
                      color: Colors.green[500],
                      size: 40,
                    )
                  ),
                  readOnly: true
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                  right: 30
                ),
                height: 100,
                width: 400,
                child: TextFormField(
                  initialValue: "MedicashApp Salesman",
                  decoration: InputDecoration(
                    label: const DashboardText(
                      text: "Nome do vendedor",
                      fontFamily: "Noto Sans",
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.w700,
                      size: 16,
                    ),
                    icon: Icon(
                      Icons.badge,
                      color: Colors.green[500],
                      size: 40,
                    )
                  ),
                  readOnly: true
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  right: 30
                ),
                height: 100,
                width: 200,
                child: TextFormField(
                  initialValue: "5%",
                  decoration: InputDecoration(
                    label: const DashboardText(
                      text: "Cashback gerado",
                      fontFamily: "Noto Sans",
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.w700,
                      size: 16,
                    ),
                    icon: Icon(
                      Icons.currency_exchange,
                      color: Colors.green[500],
                      size: 40,
                    )
                  ),
                  readOnly: true
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}