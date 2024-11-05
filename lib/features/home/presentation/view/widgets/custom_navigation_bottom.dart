import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pigeon/core/utils/styles.dart';

class CustomNavigationBottom extends StatelessWidget {
  const CustomNavigationBottom({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final Function(int) onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color(0xff2F3C3333),
            blurRadius: 6,
            spreadRadius: 0,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: BottomNavigationBar(
          onTap: onTap,
          currentIndex: currentIndex,
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0xff2F383C),
          selectedLabelStyle: Styles.textStyle14,
          unselectedLabelStyle: Styles.textStyle14,
          showUnselectedLabels: true,
          unselectedItemColor: const Color(0xffBFBEC0),
          items: getItems(),
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> getItems() {
    return [
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'asset/icons/home.svg',
          colorFilter: ColorFilter.mode(
              currentIndex == 0
                  ? const Color(0xff2F383C)
                  : const Color(0xffBFBEC0),
              BlendMode.srcIn),
        ),
        label: 'Home',
      ),
      BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'asset/icons/shopping-cart.svg',
            colorFilter: ColorFilter.mode(
                currentIndex == 1
                    ? const Color(0xff2F383C)
                    : const Color(0xffBFBEC0),
                BlendMode.srcIn),
          ),
          label: 'Store'),
      BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'asset/icons/add-circle.svg',
            colorFilter: ColorFilter.mode(
                currentIndex == 2
                    ? const Color(0xff2F383C)
                    : const Color(0xffBFBEC0),
                BlendMode.srcIn),
          ),
          label: ''),
      BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'asset/icons/cup.svg',
            colorFilter: ColorFilter.mode(
                currentIndex == 3
                    ? const Color(0xff2F383C)
                    : const Color(0xffBFBEC0),
                BlendMode.srcIn),
          ),
          label: 'Races'),
      BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'asset/icons/profile.svg',
            colorFilter: ColorFilter.mode(
                currentIndex == 4
                    ? const Color(0xff2F383C)
                    : const Color(0xffBFBEC0),
                BlendMode.srcIn),
          ),
          label: 'Profile'),
    ];
  }
}
