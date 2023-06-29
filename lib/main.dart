import 'package:flutter/material.dart';
import 'package:routes_flutter/home.dart';
import 'package:routes_flutter/screen_3.dart';
import 'package:routes_flutter/second_screen.dart';
import 'package:routes_flutter/utils/routes.dart';
import 'package:routes_flutter/utils/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RoutesName.HomeScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
