import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({
    Key? key,
    required this.valueListenable,
    required this.onEnd,
  }) : super(key: key);
  final Function() onEnd;
  final ValueListenable valueListenable;

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  double boxSize = 300;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.valueListenable,
      builder: (_, canAnimate, __) {
        return AnimatedContainer(
          onEnd: widget.onEnd,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: canAnimate as bool ? Colors.transparent : Colors.amber,
          ),
          curve: Curves.easeIn,
          alignment: canAnimate ? Alignment.centerLeft : Alignment.centerRight,
          height: 100,
          width: canAnimate ? 100 : boxSize,
          // width: isSmall as bool ? 100 : 200,
          duration: const Duration(milliseconds: 500),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            margin: const EdgeInsets.only(left: 20, right: 20),
            height: 50,
            width: 50,
            color: canAnimate ? Colors.grey : Colors.amber.shade900,
          ),
        );
      },
    );
  }
}
