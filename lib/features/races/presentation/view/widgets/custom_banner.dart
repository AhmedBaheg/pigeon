import 'package:flutter/material.dart';
import 'package:pigeon/core/utils/styles.dart';
import 'package:pigeon/core/widgets/custom_out_line_btn.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.11,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Stack(
          children: [
            Image.asset(
              'asset/images/banner_img.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff2F3C3380),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Positioned(
              top: 8,
              left: 12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Live free result of National Pigeon \nRace of Egypt',
                    maxLines: 2,
                    style: Styles.textStyle16.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  CustomOutLineBtn(
                    onPressed: () {},
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.03,
                    borderColor: Colors.white,
                    child: Text(
                      'Watch now',
                      style: Styles.textStyle12.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
