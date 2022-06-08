import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({
    Key? key,
    required this.opacity,
    required this.onEnd,
  }) : super(key: key);
  final Function() onEnd;
  final double opacity;

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedOpacity(
        onEnd: widget.onEnd,
        duration: const Duration(milliseconds: 800),
        opacity: widget.opacity,
        child: ClipOval(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
