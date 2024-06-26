import 'package:go_router/go_router.dart';
import 'package:test_slash/core/routing/routes.dart';

import '../../features/home/presentation/views/home_view_mobile.dart';
import '../../slash_app.dart';

class AppRouters{
  // GoRouter configuration
  static  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.home,
        builder: (context, state) => const ResponsiveHomeScreen(),
      ),
    ],
  );


}