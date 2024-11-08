import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pigeon/core/utils/app_colors.dart';
import 'package:pigeon/core/utils/styles.dart';
import 'package:pigeon/core/widgets/custom_icon_app_bar.dart';
import 'package:pigeon/features/home/presentation/view/widgets/category_race_status.dart';
import 'package:pigeon/features/races/data/model/category_race_model.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.model,
    required this.onTap,
    required this.appBarTitle,
    required this.child,
  });

  final CategoryRaceModel model;
  final VoidCallback onTap;
  final String appBarTitle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconAppBar(
            onTap: onTap,
            child: child,
          ),
          Text(
            appBarTitle,
            style: Styles.textStyle16,
          ),
          CategoryRaceStatus(model: model),
        ],
      ),
    );
  }
}
