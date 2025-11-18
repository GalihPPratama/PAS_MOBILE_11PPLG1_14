import 'package:flutter/material.dart';

class MybuttonComponents extends StatelessWidget {
  final String text;
  final Color textColor;
  final VoidCallback onPressed;

  const MybuttonComponents({
    super.key,
    required this.text,
    required this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text, style: TextStyle(color: textColor)),
    );
  }
}
