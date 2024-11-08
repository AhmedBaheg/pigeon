import 'package:go_router/go_router.dart';
import 'package:pigeon/features/home/presentation/view/home_view.dart';
import 'package:pigeon/features/races/data/model/category_race_model.dart';
import 'package:pigeon/features/races/presentation/view/races_view.dart';
import 'package:pigeon/features/races_details/presentation/view/races_details_view.dart';

abstract class AppRouter {
  static const String kRacesView = '/racesView';
  static const String kRacesDetailsView = '/racesDetailsView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kRacesView,
        builder: (context, state) => const RacesView(),
      ),
      GoRoute(
        path: kRacesDetailsView,
        builder: (context, state) {
          final model = state.extra as CategoryRaceModel;
          return RacesDetailsView(model: model);
        },
      ),
    ],
  );
}
