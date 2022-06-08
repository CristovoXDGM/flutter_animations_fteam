import 'package:flutter/material.dart';
import 'package:flutter_animations_fteam/app/shared/constants/app_routes.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HeroComponent extends StatefulWidget {
  const HeroComponent({Key? key}) : super(key: key);

  @override
  State<HeroComponent> createState() => _HeroComponentState();
}

class _HeroComponentState extends State<HeroComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Modular.to.pushNamed(AppRoutes.heroPage);
      },
      child: SizedBox(
        width: double.infinity,
        child: Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Hero(
                  tag: 'flutter-logo',
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/trees.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam massa et ac id lectus elit vel placerat. Magna varius magna diam nunc, iaculis. ",
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
