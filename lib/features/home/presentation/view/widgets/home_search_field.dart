import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pigeon/core/utils/app_colors.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.veryLightGray,
          hintStyle: const TextStyle(color: AppColors.gray),
          prefixIcon: Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 8),
            child: SvgPicture.asset(
              'asset/icons/search-normal.svg',
              colorFilter:
                  const ColorFilter.mode(AppColors.gray, BlendMode.srcIn),
            ),
          ),
          hintText: 'Search anything',
          focusedBorder: buildOutlineInputBorder(),
          enabledBorder: buildOutlineInputBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide.none,
    );
  }
}
