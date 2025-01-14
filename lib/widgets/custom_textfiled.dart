import 'package:flutter/material.dart';
import 'package:readhaven/constants/theme.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.prefixIcon,
  });

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final Widget prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: const TextStyle(
        fontSize: 16.0,
        color: AppTheme.primayTextColor,
      ),
      obscureText: obscureText,
      cursorColor: Colors.black87,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 16.0,
          color: AppTheme.secondaryTextColor,
        ),
        prefixIcon: prefixIcon,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: AppTheme.secondaryTextColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: AppTheme.secondaryTextColor,
          ),
        ),
      ),
    );
  }
}
