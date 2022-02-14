import 'package:bmi_app/routes/route_names.dart';
import 'package:bmi_app/screens/bmi.dart';
import 'package:bmi_app/screens/home.dart';
import 'package:flutter/material.dart';

class AppRouting {
  Route generatRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      case RouteName.bmi:
        return MaterialPageRoute(
          builder: (_) => BmiPage(),
        );
      default:
        throw 'page not found';
    }
  }
}
