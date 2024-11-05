import 'package:flutter/material.dart';
import 'package:pigeon/core/utils/styles.dart';

class HeaderTitleWithSeeAll extends StatelessWidget {
  const HeaderTitleWithSeeAll({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.textStyle16,
        ),
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xff2F383C),
          ),
          child: const Text(
            'See all',
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
