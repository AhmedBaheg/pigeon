import 'package:flutter/material.dart';
import 'package:pigeon/core/utils/app_colors.dart';
import 'package:pigeon/features/races/data/model/category_race_model.dart';

import 'active_auction.dart';
import 'categories.dart';
import 'new_at_market.dart';
import 'category_race.dart';

class RestOfHomeScreen extends StatelessWidget {
  const RestOfHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      width: double.infinity,
      color: AppColors.veryLightGray,
      child: Column(
        children: [
          const Categories(),
          const SizedBox(height: 16),
          CategoryRace(
            model: categoryRaceList[0],
          ),
          const SizedBox(height: 16),
          const ActiveAuction(),
          const SizedBox(height: 16),
          const NewAtMarket(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
