import 'package:flutter/material.dart';
import 'package:flutter_animations_fteam/app/shared/constants/app_routes.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(AppRoutes.home);
    return MaterialApp.router(
        themeMode: ThemeMode.dark,
        theme: ThemeData.dark().copyWith(
          colorScheme: const ColorScheme.dark().copyWith(
            primary: const Color(0xff4F1F4D),
            secondary: const Color(0xff9180A7),
            background: const Color(0xff202020),
          ),
        ),
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate);
  }
}
