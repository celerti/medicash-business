import 'package:flutter/material.dart';

class ActionButton extends StatefulWidget {
  final IconData icon;
  final Color? color;
  final Color? onHoverColor;
  final VoidCallback onTap;
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
  Color? _onHoverColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _buttonColor = widget.color;
    _onHoverColor = widget.onHoverColor;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: widget.onHoverColor != null ? (event) => setState(() {
        _buttonColor = Colors.deepPurpleAccent;
      }) : (event) => {},
      onExit: widget.onHoverColor != null ? (event) => setState(() {
        _buttonColor = Colors.deepPurple[200];
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