import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:its_movieapp_2024/router/app_routes.dart';

extension Navigation on BuildContext {
  pushNotFound() => push(AppRoute.notFound.path);
  goToNotFound() => go(AppRoute.notFound.path);

  pushWelcome() => push(AppRoute.welcome.path);
  goToWelcome() => go(AppRoute.welcome.path);

  pushSignIn() => push(AppRoute.signIn.path);
  goToSignIn() => go(AppRoute.signIn.path);

  pushSignUp() => push(AppRoute.signUp.path);
  goToSignUp() => go(AppRoute.signUp.path);

  pushHome() => push(AppRoute.home.path);
  goToHome() => go(AppRoute.home.path);
}
