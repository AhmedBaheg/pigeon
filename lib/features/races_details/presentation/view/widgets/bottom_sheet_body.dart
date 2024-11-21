import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pigeon/core/utils/app_colors.dart';
import 'package:pigeon/core/utils/styles.dart';
import 'package:pigeon/core/widgets/custom_btn_app.dart';
import 'package:pigeon/features/constant.dart';

import 'bottom_sheet_confirmed_body.dart';
import 'race_bottom_sheet_item.dart';

class BottomSheetBody extends StatefulWidget {
  const BottomSheetBody({super.key});

  @override
  State<BottomSheetBody> createState() => _BottomSheetBodyState();
}

class _BottomSheetBodyState extends State<BottomSheetBody> {
  bool isClicked = true;
  List<bool> selectedBtn = List.generate(6, (index) => true);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
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
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Choose the pigeon',
                style: Styles.textStyle16,
              ),
            ),
            const SizedBox(height: 16),
            Column(
              children: List.generate(
                6,
                (index) => RaceBottomSheetItem(
                  onPressed: selectedBtn[index]
                      ? () {
                          setState(() {
                            selectedBtn[index] = false;
                            isClicked = false;
                          });
                        }
                      : null,
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: CustomBtnApp(
                onPressed: isClicked
                    ? null
                    : () {
                        GoRouter.of(context).pop();
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                            ),
                            context: context,
                            builder: (context) {
                              return const BottomSheetConfirmedBody();
                            });
                      },
                backgroundColor: AppColors.darkGray,
                text: 'Confirm',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
