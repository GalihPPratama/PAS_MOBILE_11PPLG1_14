import 'package:flutter/material.dart';

class Customtexfield1Components extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller1;
  final bool isPassword;

  const Customtexfield1Components({
    super.key,
    required this.controller1,
    required this.label,
    required this.hint,
    required this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: OutlineInputBorder(),
      ),
      controller: controller1,
    );
  }
}
