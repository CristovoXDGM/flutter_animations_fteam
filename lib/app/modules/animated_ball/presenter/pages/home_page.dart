import 'package:flutter/material.dart';
import 'package:flutter_animations_fteam/app/shared/constants/app_routes.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed(AppRoutes.implicitAnimationPage);
              },
              child: const Text("Animações implicitas"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed(AppRoutes.animatedBallPage);
              },
              child: const Text("Animações Explicitas"),
            ),
            const SizedBox(
              height: 20,
            ),
            IconButton(
              onPressed: () {
                Modular.to.pushNamed(AppRoutes.heroPage);
              },
              icon: const Hero(
                tag: "flutter-logo",
                child: FlutterLogo(
                  size: 80,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
