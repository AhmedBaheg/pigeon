import 'package:flutter/material.dart';

import 'active_auction_card.dart';
import 'header_title_with_see_all.dart';

class ActiveAuction extends StatelessWidget {
  const ActiveAuction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderTitleWithSeeAll(
          onPressed: () {},
          title: 'Active auction',
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              3,
              (index) => const Padding(
                padding: EdgeInsets.only(right: 20),
                child: ActiveAuctionCard(),
              ),
            ),
          ),
        )
      ],
    );
  }
}
