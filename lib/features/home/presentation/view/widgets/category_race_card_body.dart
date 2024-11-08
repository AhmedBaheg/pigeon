import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:pigeon/core/utils/app_colors.dart';
import 'package:pigeon/core/utils/styles.dart';
import 'package:pigeon/features/races/data/model/category_race_model.dart';

// ignore: must_be_immutable
class CategoryRaceCardBody extends StatelessWidget {
  CategoryRaceCardBody({
    super.key,
    required this.model,
  });

  final CategoryRaceModel model;
  String date = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'From',
                  style: Styles.textStyle14.copyWith(
                    color: AppColors.lightGray,
                  ),
                ),
                Text(model.from, style: Styles.textStyle14),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 28, vertical: 10.5),
              child: SvgPicture.asset(
                'asset/icons/next.svg',
                height: 12,
                colorFilter:
                    const ColorFilter.mode(AppColors.black, BlendMode.srcIn),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'To',
                  style: Styles.textStyle14.copyWith(
                    color: AppColors.lightGray,
                  ),
                ),
                Text(model.to, style: Styles.textStyle14),
              ],
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            const Text(
              'Start time',
              style: Styles.textStyle14,
            ),
            const SizedBox(width: 6),
            Text(
              getDateAndTime(),
              style: Styles.textStyle14.copyWith(
                color: model.dateTimeColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            const Text(
              'Creator',
              style: Styles.textStyle14,
            ),
            const SizedBox(width: 6),
            Text(
              'Egypt Club',
              style: Styles.textStyle14.copyWith(
                color: AppColors.gray,
              ),
            ),
          ],
        ),
      ],
    );
  }

  String getDateAndTime() {
    final dateNow = DateTime.now();
    date = DateFormat('dd MMMM yyyy hh:mm a').format(dateNow);
    return date;
  }
}
