import 'package:flutter/material.dart';
import 'package:pigeon/core/utils/app_colors.dart';
import 'package:pigeon/features/races/data/model/category_race_model.dart';
import 'package:pigeon/features/races_details/presentation/view/widgets/races_details_view_body.dart';

class RacesDetailsView extends StatelessWidget {
  const RacesDetailsView({super.key, required this.model});

  final CategoryRaceModel model;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.veryLightGray,
        body: RacesDetailsViewBody(
          model: model,
        ),
      ),
    );
  }
}
