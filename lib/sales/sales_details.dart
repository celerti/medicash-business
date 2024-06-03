import 'package:dashboard/controllers/sales_controller.dart';
import 'package:dashboard/sales/sales_form.dart';
import 'package:dashboard/widgets/action_button.dart';
import 'package:dashboard/widgets/dashboard_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SalesDetails extends StatelessWidget {
  const SalesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final SalesController controller = Get.find();
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = context.width;
        bool isMediumSize = screenWidth > 1000;
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Flexible(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.deepPurpleAccent,
                          width: 2
                        )
                      ),
                      child: ActionButton(
                        icon: Icons.arrow_back_rounded,
                        onTap: () => controller.toMain(),
                        color: Colors.deepPurpleAccent
                      ),
                    ),
                    DashboardText(
                      text: "Informativo sobre venda",
                      fontFamily: "Noto Sans",
                      size: isMediumSize ? 30 : 16,
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
              ),
              const Flexible(
                flex: 4,
                child: SalesForm()
              )
            ],
          ),
        );
      }
    );
  }
}