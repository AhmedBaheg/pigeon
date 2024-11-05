import 'package:flutter/material.dart';

import 'category_card.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CategoryCard(
              onTap: () {},
              image: 'asset/images/race.jpeg',
              title: 'Races',
              description: 'Join races and \nearn money',
            ),
            const SizedBox(width: 10),
            CategoryCard(
              onTap: () {},
              image: 'asset/images/auction.jpeg',
              title: 'Auctions',
              description: 'Enter and win \nauctions',
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            CategoryCard(
              onTap: () {},
              image: 'asset/images/market.jpeg',
              title: 'Market',
              description: 'Explore the biggest \npigeons market',
            ),
            const SizedBox(width: 10),
            CategoryCard(
              onTap: () {},
              image: 'asset/images/club.jpeg',
              title: 'Clubs',
              description: 'Join a club and \nexpand your network',
            ),
          ],
        ),
      ],
    );
  }
}
