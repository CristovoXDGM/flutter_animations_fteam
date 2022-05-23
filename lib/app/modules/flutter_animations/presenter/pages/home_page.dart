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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Modular.to.pushNamed(AppRoutes.implicitAnimationPage);
                  },
                  child: const Text(
                    "Animações implicitas",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Modular.to.pushNamed(AppRoutes.animatedBallPage);
                  },
                  child: const Text(
                    "Animações Explicitas",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Modular.to.pushNamed(AppRoutes.heroPage);
                },
                child: SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Card(
                    elevation: 2,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Hero(tag: 'flutter-logo', child: FlutterLogo()),
                        Row()
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
