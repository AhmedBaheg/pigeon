import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pigeon/features/constant.dart';
import 'package:pigeon/features/races_details/presentation/view/widgets/bottom_sheet_body.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/custom_btn_app.dart';
import '../../../../../core/widgets/custom_out_line_btn.dart';

class Btns extends StatefulWidget {
  const Btns({
    super.key,
  });

  @override
  State<Btns> createState() => _BtnsState();
}

class _BtnsState extends State<Btns> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 48,
            child: CustomBtnApp(
              onPressed: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                    ),
                    context: context,
                    builder: (context) {
                      return const BottomSheetBody();
                    });
              },
              backgroundColor: AppColors.darkGray,
              text: 'Add pigeon to the race',
            ),
          ),
        ),
        const SizedBox(width: 16),
        CustomOutLineBtn(
          onPressed: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          width: 50,
          height: 48,
          child: isSelected
              ? SvgPicture.asset('asset/icons/notification_outline.svg')
              : SvgPicture.asset('asset/icons/notification.svg'),
        ),
      ],
    );
  }
}
