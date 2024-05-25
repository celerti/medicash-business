import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class SideBarItem extends StatelessWidget {
  final IconData icon;
  final String name;
  final String destination;
  const SideBarItem({super.key,
  required this.icon,
  required this.name,
  required this.destination});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isMobile = constraints.maxWidth < 1400;
      return Container(
        width: isMobile ? 360 : double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(icon,
                  color: Colors.green[500]
                ),
                Text(name,
                  style: GoogleFonts.getFont(
                    "Noto Sans",
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                    )
                  )
                )
              ],
            ),
            onTap: () => Navigator.pushNamed(context, destination)
          ),
        ),
      );  
    });
  }
}