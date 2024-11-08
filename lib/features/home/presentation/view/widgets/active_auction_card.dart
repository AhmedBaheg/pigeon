import 'package:flutter/material.dart';
import 'package:pigeon/core/utils/app_colors.dart';
import 'package:pigeon/core/utils/styles.dart';

class ActiveAuctionCard extends StatelessWidget {
  const ActiveAuctionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'asset/images/bird1.jpeg',
                      fit: BoxFit.cover,
                      width: 57,
                      height: 57,
                    ),
                  ),
                  const SizedBox(width: 6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'American Pigeon',
                        style: Styles.textStyle14,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Last Price ',
                            style: Styles.textStyle12,
                          ),
                          Text(
                            '5000 EGP',
                            style: Styles.textStyle12
                                .copyWith(color: AppColors.green),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('asset/images/ph_bird.png'),
                          const SizedBox(width: 4),
                          const Text(
                            '2 Pigeons',
                            style: Styles.textStyle10,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: AppColors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Live',
                      style:
                          Styles.textStyle12.copyWith(color: AppColors.white),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Text('Details', style: Styles.textStyle14),
                  const SizedBox(width: 4),
                  Text(
                    '2 American rare birds',
                    style: Styles.textStyle14.copyWith(
                      color: AppColors.gray,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Text('Number of birds', style: Styles.textStyle14),
                  const SizedBox(width: 4),
                  Text(
                    '2 birds',
                    style: Styles.textStyle14.copyWith(
                      color: AppColors.darkGray,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Text('Watching', style: Styles.textStyle14),
                  const SizedBox(width: 4),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const Positioned(
                        child: CircleAvatar(
                          radius: 12,
                          backgroundImage:
                              AssetImage('asset/images/watching1.jpeg'),
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundImage:
                              AssetImage('asset/images/watching2.jpeg'),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: AppColors.darkGray,
                          child: Text(
                            '+28',
                            style: Styles.textStyle10
                                .copyWith(color: AppColors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.6,
          height: 35,
          decoration: const BoxDecoration(
            color: AppColors.softGray,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Time left',
                style: Styles.textStyle14.copyWith(
                  color: AppColors.darkGray,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                '1 D 12 H',
                style: Styles.textStyle14.copyWith(
                  color: AppColors.red,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
