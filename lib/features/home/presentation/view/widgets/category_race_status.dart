import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../races/data/model/category_race_model.dart';

class CategoryRaceStatus extends StatelessWidget {
  const CategoryRaceStatus({
    super.key,
    required this.model,
  });

  final CategoryRaceModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: model.statusColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        model.statusText,
        style: Styles.textStyle12.copyWith(color: model.textStatusColor),
      ),
    );
  }
}
