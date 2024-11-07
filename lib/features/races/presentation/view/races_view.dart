import 'package:flutter/material.dart';

import 'widgets/races_view_body.dart';

class RacesView extends StatelessWidget {
  const RacesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F8),
        body: RacesViewBody(),
      ),
    );
  }
}
