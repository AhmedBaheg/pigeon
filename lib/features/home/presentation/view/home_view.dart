import 'package:flutter/material.dart';
import 'package:pigeon/features/home/presentation/view/widgets/home_view_body.dart';
import 'package:pigeon/features/races/presentation/view/races_view.dart';

import 'widgets/custom_navigation_bottom.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  List pages = [
    const HomeViewBody(),
    const HomeViewBody(),
    const HomeViewBody(),
    const RacesView(),
    const HomeViewBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            pages[currentIndex],
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: CustomNavigationBottom(
                onTap: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                currentIndex: currentIndex,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
