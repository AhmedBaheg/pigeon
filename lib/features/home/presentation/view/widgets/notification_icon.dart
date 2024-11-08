import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pigeon/core/utils/app_colors.dart';

import '../../../../../core/widgets/custom_icon_app_bar.dart';

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
      borderRadius: BorderRadius.circular(8),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomIconAppBar(
            onTap: () {},
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
