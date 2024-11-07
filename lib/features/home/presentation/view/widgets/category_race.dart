import 'package:flutter/material.dart';
import 'package:pigeon/features/races/data/model/category_race_model.dart';

import 'categories.dart';
import 'header_title_with_see_all.dart';
import 'category_race_card.dart';

class CategoryRace extends StatelessWidget {
  const CategoryRace({
    super.key,
    required this.model,
  });

  final CategoryRaceModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            HeaderTitleWithSeeAll(
              onPressed: () {},
              title: model.headerCategoryTitle,
            ),
            GestureDetector(
              onTap: () {},
              child: CategoryRaceCard(
                model: model,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
