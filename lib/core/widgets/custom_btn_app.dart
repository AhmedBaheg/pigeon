import 'package:flutter/material.dart';

class CustomBtnApp extends StatelessWidget {
  const CustomBtnApp(
      {super.key,
      required this.onPressed,
      required this.backgroundColor,
      required this.text});

  final VoidCallback? onPressed;
  final Color backgroundColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
