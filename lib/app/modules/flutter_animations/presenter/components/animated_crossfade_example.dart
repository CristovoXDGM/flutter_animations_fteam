import 'package:flutter/material.dart';

class AnimatedCrossFadeExample extends StatefulWidget {
  const AnimatedCrossFadeExample({Key? key, required this.crossFadeState})
      : super(key: key);
  final CrossFadeState crossFadeState;

  @override
  State<AnimatedCrossFadeExample> createState() =>
      _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
  final Duration defaultCrossfadeDuration = const Duration(seconds: 2);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedCrossFade(
        crossFadeState: widget.crossFadeState,
        duration: defaultCrossfadeDuration,
        firstChild: Container(
          height: 100,
          width: 100,
          color: Colors.blue,
        ),
        secondChild: Container(
          height: 100,
          width: 200,
          color: Colors.red,
        ),
        firstCurve: Curves.easeInBack,
        secondCurve: Curves.easeIn,
        sizeCurve: Curves.bounceOut,
        reverseDuration: defaultCrossfadeDuration,
      ),
    );
  }
}
