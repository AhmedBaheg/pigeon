import 'package:go_router/go_router.dart';
import 'package:pigeon/features/home/presentation/view/home_view.dart';
import 'package:pigeon/features/races/presentation/view/races_view.dart';

abstract class AppRouter {
  static const String kRacesView = '/racesView';

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
    ],
  );
}
