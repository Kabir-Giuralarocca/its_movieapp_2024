import 'package:flutter/material.dart';
import 'package:its_movieapp_2024/router/navigation.dart';
import 'package:its_movieapp_2024/ui/widgets/app_title.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Image.asset(
              'assets/images/posters.png',
              alignment: Alignment.bottomCenter,
            ),
          ),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Column(spacing: 24, children: [
                const AppTitle.large(),
                Text(
                  'An app to catalog, track, and explore your favorite movies in a personalized library.',
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  onPressed: () => context.pushSignIn(),
                  child: const Text('Start Now'),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
