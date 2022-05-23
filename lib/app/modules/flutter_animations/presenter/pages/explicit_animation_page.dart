import 'package:flutter/material.dart';

class ExplicitAnimationPage extends StatefulWidget {
  const ExplicitAnimationPage({Key? key}) : super(key: key);

  @override
  State<ExplicitAnimationPage> createState() => _ExplicitAnimationPageState();
}

class _ExplicitAnimationPageState extends State<ExplicitAnimationPage> {
  final title = 'Animações explicitas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
