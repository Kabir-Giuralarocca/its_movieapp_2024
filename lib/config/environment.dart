import 'package:flutter/material.dart';

class Env {
  Env() {
    debugPrint('Environment: $env');
  }

  static const String env = String.fromEnvironment('env');
  static const String baseUrl = String.fromEnvironment('baseUrl');
}
