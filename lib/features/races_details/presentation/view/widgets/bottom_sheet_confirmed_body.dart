import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pigeon/core/utils/styles.dart';
import 'package:pigeon/core/widgets/custom_btn_app.dart';

import '../../../../../core/utils/app_colors.dart';

class BottomSheetConfirmedBody extends StatelessWidget {
  const BottomSheetConfirmedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.width * .8,
        child: Column(
          children: [
            const SizedBox(height: 8),
            Container(
              height: 8,
              width: MediaQuery.of(context).size.width * .25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.lightGray,
              ),
            ),
            const SizedBox(height: 29),
            SvgPicture.asset('asset/icons/tick-circle.svg'),
            const SizedBox(height: 8),
            const Text(
              'Confirmed',
              style: Styles.textStyle18,
            ),
            const SizedBox(height: 8),
            Text(
              'Pigeons Added successfully to the race',
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 22),
            SizedBox(
              width: double.infinity,
              child: CustomBtnApp(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                backgroundColor: AppColors.darkGray,
                text: 'Done',
              ),
            ),
            const SizedBox(height: 19),
          ],
        ),
      ),
    );
  }
}
