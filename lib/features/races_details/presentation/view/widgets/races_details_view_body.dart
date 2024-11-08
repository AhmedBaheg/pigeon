import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../races/data/model/category_race_model.dart';
import 'custom_app_bar.dart';
import 'rest_of_race_details_screen.dart';

class RacesDetailsViewBody extends StatelessWidget {
  const RacesDetailsViewBody({super.key, required this.model});

  final CategoryRaceModel model;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          CustomAppBar(
            model: model,
            appBarTitle: 'Race details',
            onTap: () {
              GoRouter.of(context).pop();
            },
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: SvgPicture.asset(
                'asset/icons/back.svg',
                colorFilter:
                    const ColorFilter.mode(AppColors.darkGray, BlendMode.srcIn),
              ),
            ),
          ),
          const SizedBox(height: 16),
          RestOfRaceDetailsScreen(model: model),
        ],
      ),
    );
  }
}
