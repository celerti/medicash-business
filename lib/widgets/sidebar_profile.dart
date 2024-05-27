import 'package:dashboard/widgets/dashboard_text.dart';
import 'package:flutter/material.dart';

class SideBarProfile extends StatelessWidget {
  const SideBarProfile
({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isLarge = constraints.maxWidth > 1200;
      return Container(
        padding: EdgeInsets.only(
          bottom: 16,
          left: 16,
          right: 16,
          top: isLarge ? 16 : 48
        ),
        color: Colors.deepPurpleAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white
                ),
                alignment: Alignment.topCenter,
                child: const Icon(Icons.person,
                  size: 100,
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const DashboardText(text: 
              "MedicashApp Partner",
              fontFamily: "Noto Sans",
              fontWeight: FontWeight.bold,
              size: 16,
              color: Colors.white,
            ),
            // TODO: logout button
          ],
        ),
      );
    });
  }
}