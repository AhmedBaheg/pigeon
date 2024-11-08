import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pigeon/core/utils/styles.dart';
import 'package:pigeon/features/races/data/model/category_race_model.dart';

import 'category_race_status.dart';

class CategoryRaceCardHeader extends StatelessWidget {
  const CategoryRaceCardHeader({
    super.key,
    required this.model,
  });

  final CategoryRaceModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.047,
          width: 4,
          decoration: BoxDecoration(
            color: model.dividerColor,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 6),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model.raceTitle,
              style: Styles.textStyle14,
            ),
            const SizedBox(height: 6),
            Row(
              children: [
                SvgPicture.asset('asset/icons/people.svg'),
                const SizedBox(width: 2),
                Text(
                  '${model.numOfParticipants} Participants',
                  style: Styles.textStyle14,
                ),
              ],
            )
          ],
        ),
        const Spacer(),
        CategoryRaceStatus(model: model),
      ],
    );
  }
}
