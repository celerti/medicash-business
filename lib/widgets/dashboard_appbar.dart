import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

abstract class DashboardAppBar {
  static AppBar newAppBar(BuildContext context) 
  => AppBar(
    backgroundColor: Colors.deepPurpleAccent,
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          child: Row(
            children: <Widget>[
              const Icon(Icons.add_box_outlined,
              color: Colors.white),
              Text("MedicashApp Dashboard",
                style: GoogleFonts.getFont(
                  "Noto Sans",
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  )
                )
              ),
            ],
          ),
          onTap: () {
            if (ModalRoute.of(context)?.settings.name != "home") {
              Navigator.pushNamed(context, "home");
            }
          }
        ),
        InkWell(
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white
            ),
            child: const Icon(
              Icons.notifications,
              color: Colors.deepPurpleAccent,
            ),
          ),
          onTap: (){},
        )
      ],
    ),
  );
}
