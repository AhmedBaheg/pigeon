import 'package:flutter/material.dart';

class CustomOutLineBtn extends StatelessWidget {
  const CustomOutLineBtn({
    super.key,
    required this.onPressed,
    required this.width,
    required this.height,
    required this.child,
    this.borderColor,
  });

  final VoidCallback onPressed;
  final double width, height;
  final Widget child;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          side: BorderSide(
            color: borderColor ?? const Color(0xFF000000),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
