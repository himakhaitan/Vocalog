import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vocalog/screens/home/home.dart';

class AppRouter {
  AppRouter();

  // Generate Routes
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return getIndexRoute();
    }

    return null;
  }

  // Generate Index Route
  Route? getIndexRoute() {
    return MaterialPageRoute(
      builder: (_) => const Home(),
    );
  }
}
