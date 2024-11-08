import 'package:flutter/material.dart';
import 'package:pigeon/core/utils/app_colors.dart';
import 'package:pigeon/core/utils/styles.dart';
import 'package:pigeon/features/home/presentation/view/widgets/category_race_card_body.dart';
import 'package:pigeon/features/races/data/model/category_race_model.dart';
import 'package:pigeon/features/races_details/presentation/view/widgets/digits_race_details.dart';

import '../../../../constant.dart';

class RestOfRaceDetailsScreen extends StatelessWidget {
  const RestOfRaceDetailsScreen({
    super.key,
    required this.model,
  });

  final CategoryRaceModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'asset/images/races_details_img.jpeg',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            model.raceTitle,
            style: Styles.textStyle20,
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style:
                Styles.textStyle14.copyWith(color: AppColors.gray, height: 1.7),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(kBorderRadius),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DigitsRaceDetails(
                    iconPath: 'asset/icons/people.svg',
                    textData: '${model.numOfParticipants}',
                    textTitle: 'Participants',
                  ),
                  DigitsRaceDetails(
                    iconPath: 'asset/icons/clock.svg',
                    textData: getDateAndTime(),
                    textTitle: 'Start time',
                  ),
                  const DigitsRaceDetails(
                    iconPath: 'asset/icons/map.svg',
                    textData: '150 KM',
                    textTitle: 'Distance',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
