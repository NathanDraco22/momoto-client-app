import 'package:go_router/go_router.dart';
import 'package:turismo_client/src/features/auth/view/login_screen.dart';
import 'package:turismo_client/src/features/inbox/view/inbox_screen.dart';
import 'package:turismo_client/src/features/main/view/main_screen.dart';
import 'package:turismo_client/src/features/sites/view/sites_screen.dart';
import 'package:turismo_client/src/features/tours/view/tours_screen.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: "/explore",
    routes: [
      GoRoute(
        path: "/login",
        builder: (context, state) => const LoginScreen(),
      ),

      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainScreen(
            navigationShell: navigationShell,
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/explore",
                builder: (context, state) => const SitesScreen(),
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/tours",
                builder: (context, state) => const ToursScreen(),
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/inbox",
                builder: (context, state) => const InboxScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
