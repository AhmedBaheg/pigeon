import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: const Color(0xffE7E9E8)),
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
                  color: const Color(0xffA71313),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: Colors.white),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
