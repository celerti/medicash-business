import 'package:flutter/material.dart';

class FormParams {
  final String fieldName;
  final String fieldValue;
  final IconData icon;
  final double fieldWidth;
  final double fieldHeight;
  final double textSize;

  const FormParams({required this.fieldName,
  required this.fieldValue,
  required this.icon,
  required this.fieldWidth,
  required this.fieldHeight,
  this.textSize = 16});
}