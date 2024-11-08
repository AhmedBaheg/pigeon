import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomIconAppBar extends StatelessWidget {
  const CustomIconAppBar({
    super.key,
    required this.onTap,
    required this.child,
  });

  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 40,
        width: 40,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: AppColors.softGray),
        ),
        child: child,
      ),
    );
  }
}
