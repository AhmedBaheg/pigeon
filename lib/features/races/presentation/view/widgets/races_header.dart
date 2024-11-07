import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pigeon/core/utils/styles.dart';

class RacesHeader extends StatelessWidget {
  const RacesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: 4,
          decoration: BoxDecoration(
            color: const Color(0xff55CC4B),
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 12),
        Column(
          children: [
            Row(
              children: [
                const Text(
                  'Races',
                  style: Styles.textStyle24,
                ),
                const SizedBox(width: 5),
                SvgPicture.asset('asset/icons/XMLID_72_.svg'),
              ],
            ),
            const SizedBox(height: 6),
            const Text(
              '2024 Season',
              style: Styles.textStyle16,
            ),
          ],
        ),
      ],
    );
  }
}
