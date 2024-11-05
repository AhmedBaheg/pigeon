import 'package:flutter/material.dart';

import 'active_auction.dart';
import 'categories.dart';
import 'new_at_market.dart';
import 'upcoming_race.dart';

class RestOfScreen extends StatelessWidget {
  const RestOfScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      width: double.infinity,
      color: const Color(0xffF5F5F8),
      child: const Column(
        children: [
          Categories(),
          SizedBox(height: 16),
          UpcomingRace(),
          SizedBox(height: 16),
          ActiveAuction(),
          SizedBox(height: 16),
          NewAtMarket(),
        ],
      ),
    );
  }
}
