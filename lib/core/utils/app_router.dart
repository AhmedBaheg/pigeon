import 'package:go_router/go_router.dart';
import 'package:pigeon/features/home/presentation/view/home_view.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
