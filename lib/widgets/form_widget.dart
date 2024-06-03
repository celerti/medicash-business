import 'package:dashboard/widgets/dashboard_text.dart';
import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  final double width;
  final double height;
  final IconData icon;
  final String fieldName;
  final String fieldValue;
  final bool viewAction;
  final double fontSize;
  const FormWidget({super.key,
  required this.width,
  required this.height,
  this.viewAction = false,
  required this.icon,
  this.fontSize = 16,
  required this.fieldName,
  required this.fieldValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 30
      ),
      height: height,
      width: width,
      child: TextFormField(
        initialValue: fieldValue,
        decoration: InputDecoration(
          label: DashboardText(
            text: fieldName,
            fontFamily: "Noto Sans",
            color: Colors.deepPurpleAccent,
            fontWeight: FontWeight.w700,
            size: 16,
          ),
          icon: Icon(
            icon,
            color: Colors.green[500],
            size: 40,
          )
        ),
        readOnly: viewAction,
      ),
    );
  }
}