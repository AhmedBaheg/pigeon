import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pigeon/core/utils/app_colors.dart';
import 'package:pigeon/core/utils/styles.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.onTap,
    required this.image,
    required this.title,
    required this.description,
  });

  final VoidCallback onTap;
  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.transparency,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            title,
                            style: Styles.textStyle16
                                .copyWith(color: AppColors.white),
                          ),
                          const SizedBox(width: 8),
                          SvgPicture.asset('asset/icons/next.svg')
                        ],
                      ),
                      Text(description,
                          maxLines: 2,
                          style: Styles.textStyle14
                              .copyWith(color: AppColors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
