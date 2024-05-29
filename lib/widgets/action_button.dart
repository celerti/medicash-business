import 'package:flutter/material.dart';

class ActionButton extends StatefulWidget {
  final IconData icon;
  final Color? color;
  final Color? onHoverColor;
  final VoidCallback? onTap;
  const ActionButton({super.key, 
  required this.icon,
  required this.onTap, 
  required this.color,
  this.onHoverColor});

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {

  Color? _buttonColor;

  @override
  void initState() {
    super.initState();
    _buttonColor = widget.color;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: widget.onHoverColor != null ? (event) => setState(() {
        _buttonColor = widget.onHoverColor;
      }) : (event) => {},
      onExit: widget.onHoverColor != null ? (event) => setState(() {
        _buttonColor = widget.color;
      }) : (event) => {},
      child: InkWell(
        onTap: widget.onTap,
        child: Icon(
          widget.icon,
          color: _buttonColor,
        ),
      ),
    );
  }
}