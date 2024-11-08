import 'package:flutter/material.dart';
import 'package:pigeon/core/utils/app_colors.dart';

import 'widgets/races_view_body.dart';

class RacesView extends StatelessWidget {
  const RacesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.veryLightGray,
        body: RacesViewBody(),
      ),
    );
  }
}
