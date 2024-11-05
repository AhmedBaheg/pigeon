import 'package:flutter/material.dart';

import 'hello_text_with_img.dart';
import 'notification_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HelloTextWithImg(),
        NotificationIcon(notify: true),
      ],
    );
  }
}
