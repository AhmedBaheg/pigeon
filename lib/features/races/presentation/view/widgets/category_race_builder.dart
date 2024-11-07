import 'package:flutter/material.dart';
import 'package:pigeon/features/home/presentation/view/widgets/category_race.dart';
import 'package:pigeon/features/races/data/model/category_race_model.dart';

class CategoryRaceBuilder extends StatelessWidget {
  const CategoryRaceBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        categoryRaceList.length,
        (index) => Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: CategoryRace(model: categoryRaceList[index]),
        ),
      ),
    );
  }
}
