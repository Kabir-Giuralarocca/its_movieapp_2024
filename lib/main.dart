import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';
import 'package:its_movieapp_2024/router/app_router.dart';
import 'package:its_movieapp_2024/ui/theme/app_theme.dart';

void main() {
  usePathUrlStrategy();
  GoRouter.optionURLReflectsImperativeAPIs = true;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'MovieCatalog',
      theme: AppTheme.theme,
      routerConfig: AppRouter.router,
      scaffoldMessengerKey: AppRouter.scaffoldMessengerKey,
    );
  }
}
