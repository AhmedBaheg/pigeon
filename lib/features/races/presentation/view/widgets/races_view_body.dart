import 'package:flutter/material.dart';
import 'package:pigeon/features/races/presentation/view/widgets/categories_list_builder.dart';
import 'package:pigeon/features/races/presentation/view/widgets/category_race_builder.dart';

import 'custom_banner.dart';
import 'races_header.dart';

class RacesViewBody extends StatelessWidget {
  const RacesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            const RacesHeader(),
            const SizedBox(height: 24),
            const CustomBanner(),
            const SizedBox(height: 16),
            CategoriesListBuilder(),
            const SizedBox(height: 16),
            const CategoryRaceBuilder(),
          ],
        ),
      ),
    );
  }
}
