import 'package:go_router/go_router.dart';
import 'package:skeleton/features/home/presentation/home_page.dart';

class AppRouter {
  AppRouter._();

  static GoRouter get router => GoRouter(routes: [
        GoRoute(
          path: homeScreen,
          builder: (context, state) => const HomePage(),
        )
      ]);

  static const String homeScreen = '/';
}
