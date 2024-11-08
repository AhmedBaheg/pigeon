import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:pigeon/core/utils/app_colors.dart';
import 'package:pigeon/core/utils/styles.dart';
import 'package:pigeon/features/races/data/model/category_race_model.dart';

import 'category_race_card_body.dart';
import 'category_race_card_header.dart';

class CategoryRaceCard extends StatelessWidget {
  const CategoryRaceCard({
    super.key,
    required this.model,
  });

  final CategoryRaceModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          CategoryRaceCardHeader(
            model: model,
          ),
          const SizedBox(height: 12),
          CategoryRaceCardBody(
            model: model,
          ),
        ],
      ),
    );
  }
}
