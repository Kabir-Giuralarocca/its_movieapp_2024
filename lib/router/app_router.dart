import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:its_movieapp_2024/router/app_routes.dart';

class AppRouter {
  static final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  static final navigatorKey = GlobalKey<NavigatorState>();

  static final router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: navigatorKey,
    initialLocation: AppRoute.welcome.path,
    routes: [
      GoRoute(
        parentNavigatorKey: navigatorKey,
        name: AppRoute.welcome.name,
        path: AppRoute.welcome.path,
        builder: (context, state) => const Placeholder(),
      ),
      GoRoute(
        parentNavigatorKey: navigatorKey,
        name: AppRoute.notFound.name,
        path: AppRoute.notFound.path,
        builder: (context, state) => const Placeholder(),
      ),
    ],
    errorBuilder: (context, state) => const Placeholder(),
  );
}
