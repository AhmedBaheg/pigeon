import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pigeon/core/utils/app_colors.dart';
import 'package:pigeon/core/utils/styles.dart';
import 'package:pigeon/core/widgets/custom_btn_app.dart';
import 'package:pigeon/features/home/presentation/view/widgets/category_race_card_body.dart';
import 'package:pigeon/features/races/data/model/category_race_model.dart';
import 'package:pigeon/features/races_details/presentation/view/widgets/digits_race_details.dart';

import '../../../../../core/widgets/custom_out_line_btn.dart';
import '../../../../constant.dart';
import 'basic_race_details.dart';
import 'btns.dart';
import 'race_details_location_card.dart';

class RestOfRaceDetailsScreen extends StatefulWidget {
  const RestOfRaceDetailsScreen({
    super.key,
    required this.model,
  });

  final CategoryRaceModel model;

  @override
  State<RestOfRaceDetailsScreen> createState() =>
      _RestOfRaceDetailsScreenState();
}

class _RestOfRaceDetailsScreenState extends State<RestOfRaceDetailsScreen> {
  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BasicRaceDetails(model: widget.model),
          const SizedBox(height: 16),
          RaceDetailsLocationCard(
            onTap: () {},
            locationIconPath: '',
            actionIconPath: 'asset/icons/next.svg',
            text1: 'Club',
            text2: 'The Giza club',
          ),
          const SizedBox(height: 16),
          RaceDetailsLocationCard(
            onTap: () {
              setState(() {
                isOpened = !isOpened;
              });
            },
            locationIconPath: 'asset/icons/map (1).svg',
            actionIconPath:
                !isOpened ? 'asset/icons/next.svg' : 'asset/icons/down.svg',
            text1: '150 Kilometers',
            text2: 'Cairo, Egypt to Qena, Egypt',
            isOpened: isOpened,
          ),
          const SizedBox(height: 16),
          RaceDetailsLocationCard(
            onTap: () {},
            locationIconPath: 'asset/icons/gps.svg',
            actionIconPath: 'asset/icons/copy.svg',
            text1: 'Latitude: 26.556900 / N 26° 33' '24.84',
            text2: 'Longitude: 31.695900 / E 31° 41' '45.24',
          ),
          const SizedBox(height: 35),
          const Btns(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
