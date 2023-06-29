import 'package:flutter/material.dart';
import 'package:routes_flutter/home.dart';
import 'package:routes_flutter/screen_3.dart';
import 'package:routes_flutter/second_screen.dart';
import 'package:routes_flutter/utils/routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.HomeScreen:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );

      case RoutesName.HomeScreen:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );

      case RoutesName.SecondScreen:
        return MaterialPageRoute(
          builder: (context) => SecondScreen(
            data: settings.arguments as Map,
          ),
        );
      case RoutesName.ThirdScreen:
        return MaterialPageRoute(
          builder: (context) => ThirdScreen(
            details: settings.arguments as Map,
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Text("wron screen name"),
          ),
        );
    }
  }
}
