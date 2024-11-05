import 'package:flutter/material.dart';

import 'categories.dart';
import 'header_title_with_see_all.dart';
import 'upcoming_race_card.dart';

class UpcomingRace extends StatelessWidget {
  const UpcomingRace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            HeaderTitleWithSeeAll(
              onPressed: () {},
              title: 'Upcoming Race',
            ),
            UpcomingRaceCard(),
          ],
        ),
      ],
    );
  }
}
