import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({
    Key? key,
    required this.valueListenable,
  }) : super(key: key);

  final ValueListenable valueListenable;

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.valueListenable,
      builder: (_, isSmall, __) {
        return Center(
          child: GestureDetector(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AnimatedContainer(
                curve: Curves.easeIn,
                color: Colors.amber,
                height: 100,
                width: isSmall as bool ? 100 : 200,
                duration: const Duration(milliseconds: 500),
              ),
            ),
          ),
        );
      },
    );
  }
}
