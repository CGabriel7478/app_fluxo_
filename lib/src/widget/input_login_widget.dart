import 'package:flutter/material.dart';

class InputLoginWidget extends StatelessWidget {
  final IconData icon;
  final String hint;
  final bool obscure;

  const InputLoginWidget({
    super.key,
    required this.icon,
    required this.hint,
    required this.obscure,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(
          icon, // Changed from icon.person_2_outlined to just icon
          color: const Color(0xFFFFFFFF),
        ),
        hintText: hint,
        hintStyle: const TextStyle(color: Color(0xFFFFFFFF)),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.yellowAccent),
        ),
      ),
      style: const TextStyle(color: Color(0xFFFFFFFF)),
      obscureText: obscure,
    );
  }
}