import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pigeon/core/utils/styles.dart';

import 'categories.dart';
import 'custom_app_bar_home.dart';
import 'home_search_field.dart';
import 'rest_of_home_screen.dart';
import 'category_race_card.dart';
import 'header_title_with_see_all.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(height: 24),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomAppBarHome(),
          ),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: HomeSearchField(),
          ),
          SizedBox(height: 24),
          RestOfHomeScreen(),
        ],
      ),
    );
  }
}
