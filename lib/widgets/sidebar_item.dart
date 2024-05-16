import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class SideBarItem extends StatelessWidget {
  final IconData icon;
  final String name;
  final String routeName;
  const SideBarItem({super.key,
  required this.icon,
  required this.name,
  required this.routeName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(icon,
              color: Colors.green[500]
            ),
            Text(name,
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
                )
              )
            )
          ],
        ),
        onTap: () {
          if (ModalRoute.of(context)?.settings.name != routeName) {
            Navigator.pushNamed(context, routeName);
          }
        }
      ),
    );
  }
}