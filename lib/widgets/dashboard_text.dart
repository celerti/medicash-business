import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardText extends StatelessWidget {
  final String text;
  final String fontFamily;
  final FontWeight fontWeight;
  final double size;
  final Color color;
  const DashboardText({super.key, 
  required this.text,
  required this.fontFamily,
  this.fontWeight=FontWeight.normal,
  this.size = 16,
  this.color = Colors.black87});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.getFont(fontFamily,
        textStyle: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: size,
          overflow: TextOverflow.clip
        )
      )
    );
  }
}