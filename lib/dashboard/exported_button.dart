import 'package:flutter/material.dart';

class ExportButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function onPressed;

  ExportButton(
      {required this.label, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => onPressed(),
      icon: Icon(icon),
      label: Text(
        label,
        style: TextStyle(color: Colors.blue),
      ),
    );
  }
}
