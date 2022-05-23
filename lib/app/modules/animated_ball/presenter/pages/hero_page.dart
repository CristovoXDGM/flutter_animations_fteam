import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeroPage extends StatefulWidget {
  const HeroPage({Key? key}) : super(key: key);

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Hero(
            tag: 'flutter-logo',
            child: FlutterLogo(
              size: 80,
            ),
          ),
        ));
  }
}
