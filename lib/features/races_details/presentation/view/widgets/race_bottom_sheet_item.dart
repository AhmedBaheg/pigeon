import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_btn_app.dart';
import '../../../../constant.dart';

class RaceBottomSheetItem extends StatelessWidget {
  const RaceBottomSheetItem({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              color: AppColors.darkGray,
            ),
            child: SvgPicture.asset(
              'asset/icons/Group.svg',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 6),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pigeon 11',
                style: Styles.textStyle14,
              ),
              SizedBox(height: 2),
              Text(
                'EG -20 -432134 - H',
                style: Styles.textStyle12,
              ),
            ],
          ),
          const Spacer(),
          CustomBtnApp(
            onPressed: onPressed,
            backgroundColor: AppColors.darkGray,
            text: 'Add',
          ),
        ],
      ),
    );
  }
}
