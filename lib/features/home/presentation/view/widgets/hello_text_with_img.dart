import 'package:flutter/material.dart';

class HelloTextWithImg extends StatelessWidget {
  const HelloTextWithImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'asset/images/home_profile_img.jpeg',
              fit: BoxFit.cover,
              width: 36,
              height: 36,
            ),
          ),
          const SizedBox(width: 6),
          const Text(
            'Hello Sherif',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
