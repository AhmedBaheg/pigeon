import 'package:flutter/material.dart';
import 'package:pigeon/features/races_details/presentation/view/widgets/races_details_view_body.dart';

class RacesDetailsView extends StatelessWidget {
  const RacesDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: RacesDetailsViewBody(),
      ),
    );
  }
}
