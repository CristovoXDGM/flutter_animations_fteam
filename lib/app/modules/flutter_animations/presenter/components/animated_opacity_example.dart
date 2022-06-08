import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({
    Key? key,
    // required this.opacity,
  }) : super(key: key);

  // final double opacity;

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  @override
  Widget build(BuildContext context) {
    return const Center(
        // child: AnimatedOpacity(
        //   duration: const Duration(milliseconds: 800),
        //   opacity: widget.opacity,
        //   child: ClipOval(
        //     child: Container(
        //       width: 100,
        //       height: 100,
        //       color: Colors.green,
        //     ),
        //   ),
        // ),
        );
  }
}
