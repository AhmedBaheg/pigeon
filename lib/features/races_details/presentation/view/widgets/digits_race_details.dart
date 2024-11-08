import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pigeon/core/utils/app_colors.dart';
import 'package:pigeon/core/utils/styles.dart';

class DigitsRaceDetails extends StatelessWidget {
  const DigitsRaceDetails(
      {super.key,
      required this.iconPath,
      required this.textData,
      required this.textTitle});

  final String iconPath, textData, textTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          iconPath,
          width: 24,
          height: 24,
        ),
        const SizedBox(height: 4),
        Text(
          textData,
          style: Styles.textStyle14,
        ),
        const SizedBox(height: 4),
        Text(
          textTitle,
          style: Styles.textStyle12.copyWith(color: AppColors.gray),
        ),
      ],
    );
  }
}
