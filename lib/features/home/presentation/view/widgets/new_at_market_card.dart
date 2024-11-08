import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pigeon/core/utils/app_colors.dart';
import 'package:pigeon/core/utils/styles.dart';
import 'package:pigeon/core/widgets/custom_btn_app.dart';
import 'package:pigeon/core/widgets/custom_out_line_btn.dart';

class NewAtMarketCard extends StatelessWidget {
  const NewAtMarketCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(4),
            width: MediaQuery.of(context).size.width * .45,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'asset/images/market1.jpeg',
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: double.infinity,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Purple pigeon ',
                  style: Styles.textStyle14,
                ),
                const SizedBox(height: 4),
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
                const SizedBox(height: 4),
                const Text(
                  '(EG-20-12345-H)Lorem Ipsum is simply dummy text of the printing ',
                  maxLines: 3,
                  style: Styles.textStyle10,
                ),
                const SizedBox(height: 4),
                Text(
                  '500 EGP ',
                  style: Styles.textStyle14.copyWith(color: AppColors.green),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  height: 30,
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomBtnApp(
                          onPressed: () {},
                          backgroundColor: AppColors.darkGray,
                          text: 'Buy now',
                        ),
                      ),
                      const SizedBox(width: 6),
                      CustomOutLineBtn(
                        onPressed: () {},
                        width: 30,
                        height: 30,
                        child: SvgPicture.asset('asset/icons/Component 2.svg'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
