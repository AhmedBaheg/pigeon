import 'package:flutter/material.dart';
import 'package:pigeon/core/utils/styles.dart';
import 'package:pigeon/features/constant.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({
    super.key,
    required this.onTap,
    required this.text,
    required this.selectIndex,
    required this.index,
  });

  final VoidCallback onTap;
  final int selectIndex, index;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        decoration: BoxDecoration(
          color: selectIndex == index
              ? const Color(0xff2F383C)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(kBorderRadius),
          border: selectIndex == index
              ? null
              : Border.all(
                  width: 1,
                  color: const Color(0xff2F383C),
                ),
        ),
        child: Center(
          child: Text(
            text,
            style: Styles.textStyle14.copyWith(
              color:
                  selectIndex == index ? Colors.white : const Color(0xff2F383C),
            ),
          ),
        ),
      ),
    );
  }
}