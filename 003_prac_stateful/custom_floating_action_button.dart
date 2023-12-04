import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatefulWidget {
  const CustomFloatingActionButton({super.key, required this.icon, this.size = 18, required this.onPressed});

  final IconData icon;
  final double size;
  final void Function() onPressed;

  @override
  State<CustomFloatingActionButton> createState() => _CustomFloatingActionButtonState();
}

class _CustomFloatingActionButtonState extends State<CustomFloatingActionButton> {
  int counter = 0;

  void update() {
    setState(() {
      widget.onPressed();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: update, child: Icon(widget.icon, size: widget.size));
  }
}
