import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:pigeon/core/utils/styles.dart';

class UpcomingRaceCard extends StatelessWidget {
  UpcomingRaceCard({
    super.key,
  });

  String date = '?';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 45,
                width: 4,
                decoration: BoxDecoration(
                  color: const Color(0xffFDEEE3),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 6),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'International Egypt Race for pigeons',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      SvgPicture.asset('asset/icons/people.svg'),
                      const SizedBox(width: 2),
                      const Text(
                        '28 Participants',
                        style: Styles.textStyle14,
                      ),
                    ],
                  )
                ],
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xffFDEEE3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Pending',
                  style: Styles.textStyle12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'From',
                    style: Styles.textStyle14.copyWith(
                      color: const Color(0xffBFBEC0),
                    ),
                  ),
                  const Text('Aswan, Egypt', style: Styles.textStyle14),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 10.5),
                child: SvgPicture.asset(
                  'asset/icons/next.svg',
                  height: 12,
                  colorFilter:
                      const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'To',
                    style: Styles.textStyle14.copyWith(
                      color: const Color(0xffBFBEC0),
                    ),
                  ),
                  const Text('Giza, Egypt', style: Styles.textStyle14),
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
                  color: const Color(0xff55CC4B),
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
                  color: const Color(0xff7E7E7E),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String getDateAndTime() {
    final dateNow = DateTime.now();
    date = DateFormat('dd MMMM yyyy hh:mm a').format(dateNow);
    return date;
  }
}
