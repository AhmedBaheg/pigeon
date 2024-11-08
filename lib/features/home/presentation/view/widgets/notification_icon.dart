import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pigeon/core/utils/app_colors.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({
    super.key,
    required this.notify,
  });

  final bool notify;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: AppColors.white),
            ),
            child: SvgPicture.asset('asset/icons/notification.svg'),
          ),
          if (notify == true)
            Positioned(
              top: 11,
              left: 22,
              child: Container(
                width: 9,
                height: 9,
                decoration: BoxDecoration(
                  color: AppColors.red,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: AppColors.white),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
