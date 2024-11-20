import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../constant.dart';

class RaceDetailsLocationCard extends StatelessWidget {
  const RaceDetailsLocationCard(
      {super.key,
      required this.onTap,
      required this.locationIconPath,
      required this.actionIconPath,
      required this.text1,
      required this.text2,
      this.isOpened});

  final VoidCallback onTap;
  final String locationIconPath;
  final String actionIconPath, text1, text2;
  final bool? isOpened;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12.5),
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  width: 43,
                  height: 43,
                  decoration: BoxDecoration(
                    color: AppColors.veryLightGray,
                    borderRadius: BorderRadius.circular(kBorderRadius),
                  ),
                  child: SvgPicture.asset(locationIconPath),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style: Styles.textStyle14,
                    ),
                    Text(
                      text2,
                      style: Styles.textStyle14,
                    ),
                  ],
                ),
                const Spacer(),
                SvgPicture.asset(
                  actionIconPath,
                  height: 16,
                  colorFilter: const ColorFilter.mode(
                      AppColors.darkGray, BlendMode.srcIn),
                ),
              ],
            ),
          ),
          if (isOpened == true)
            ClipRRect(
              child: Image.asset('asset/images/FromCairoToQena.JPG'),
            )
        ],
      ),
    );
  }
}
