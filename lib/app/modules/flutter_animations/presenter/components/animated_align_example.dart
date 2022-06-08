import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({
    Key? key,
    // this.isBallAligned = false,
  }) : super(key: key);
  // final bool isBallAligned;

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  @override
  Widget build(BuildContext context) {
    return Container();
    // return Expanded(
    //   child: Container(
    //     margin: const EdgeInsets.symmetric(horizontal: 130, vertical: 20),
    //     decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(50),
    //         border: Border.all(
    //           color: Colors.black,
    //           width: 2,
    //         )),
    //     child: AnimatedAlign(
    //       curve: Curves.bounceOut,
    //       duration: const Duration(seconds: 1),
    //       alignment: widget.isBallAligned
    //           ? Alignment.topCenter
    //           : Alignment.bottomCenter,
    //       child: ClipOval(
    //         child: Container(
    //           height: 40,
    //           width: 40,
    //           child: Center(
    //             child: Icon(
    //                 widget.isBallAligned ? Icons.add : Icons.minimize_rounded),
    //           ),
    //           color: widget.isBallAligned ? Colors.blue : Colors.red,
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
