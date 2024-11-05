import 'package:flutter/material.dart';
import 'package:pigeon/features/home/presentation/view/widgets/header_title_with_see_all.dart';

import 'new_at_market_card.dart';

class NewAtMarket extends StatelessWidget {
  const NewAtMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderTitleWithSeeAll(
          onPressed: () {},
          title: 'New at Market',
        ),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.807,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (context, index) => const NewAtMarketCard(),
        ),
      ],
    );
  }
}
