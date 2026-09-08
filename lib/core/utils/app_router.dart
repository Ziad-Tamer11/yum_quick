import 'package:go_router/go_router.dart';
import 'package:yum_quick/features/splash/presentation/view/splash_view.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [GoRoute(path: '/', builder: (context, state) => SplashView())],
  );
}
