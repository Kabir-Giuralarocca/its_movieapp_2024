import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:its_movieapp_2024/router/app_routes.dart';
import 'package:its_movieapp_2024/ui/screens/signin_screen.dart';
import 'package:its_movieapp_2024/ui/screens/welcome_screen.dart';

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
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        parentNavigatorKey: navigatorKey,
        name: AppRoute.signIn.name,
        path: AppRoute.signIn.path,
        builder: (context, state) => const SigninScreen(),
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
