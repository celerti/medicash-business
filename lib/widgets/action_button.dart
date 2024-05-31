import 'package:flutter/material.dart';

class ActionButton extends StatefulWidget {
  final IconData icon;
  final Color? color;
  final Color? onHoverColor;
  final VoidCallback? onTap;
  final Color? onTriggerColor;
  final double? size;
  const ActionButton({super.key, 
  required this.icon,
  required this.onTap, 
  required this.color,
  this.onHoverColor,
  this.onTriggerColor,
  this.size});

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {

  late Color? _buttonColor;
  late bool _toggleButton;
  

  @override
  void initState() {
    super.initState();
    _buttonColor = widget.color;
    _toggleButton = false;
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
        onTap: () {
          if (widget.onTriggerColor != null) {
            setState(() {
              _toggleButton = !_toggleButton;
              _buttonColor = _toggleButton ? widget.onTriggerColor : widget.color;
            });
          }
          widget.onTap!();
        },
        child: Icon(
          widget.icon,
          color: _buttonColor,
          size: widget.size
        ),
      ),
    );
  }
}