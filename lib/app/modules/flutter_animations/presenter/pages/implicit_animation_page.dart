import 'package:flutter/material.dart';
import 'package:flutter_animations_fteam/app/modules/flutter_animations/presenter/components/animated_align_example.dart';
import 'package:flutter_animations_fteam/app/modules/flutter_animations/presenter/components/animated_container_example.dart';
import 'package:flutter_animations_fteam/app/modules/flutter_animations/presenter/components/animated_crossfade_example.dart';
import 'package:flutter_animations_fteam/app/modules/flutter_animations/presenter/components/animated_opacity_example.dart';

class ImplicitAnimationPAge extends StatefulWidget {
  const ImplicitAnimationPAge({Key? key}) : super(key: key);

  @override
  State<ImplicitAnimationPAge> createState() => _ImplicitAnimationPAgeState();
}

class _ImplicitAnimationPAgeState extends State<ImplicitAnimationPAge> {
  late ValueNotifier cubeWidthhSize = ValueNotifier(true);
  late Color boxColor = Colors.amber;
  late CrossFadeState crossFadeState = CrossFadeState.showFirst;
  late bool isCircleVisible = false;
  late bool isBallAligned = false;

  final title = 'Animações implicitas';
  // #1
  void changeCubeSize() {
    cubeWidthhSize.value = !cubeWidthhSize.value;
  }

  void changeCircleOpacity() {
    setState(() {
      isCircleVisible = !isCircleVisible;
    });
  }

  void changeBallState() {
    setState(() {
      isBallAligned = !isBallAligned;
    });
  }

  void changeCrossFadeState() {
    setState(() {
      crossFadeState = crossFadeState == CrossFadeState.showFirst
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst;
    });
    changeBallState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // #2
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: changeCubeSize,
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 80,
          ),
          AnimatedContainerExample(
            valueListenable: cubeWidthhSize,
            onEnd: changeCircleOpacity,
          ),
          const SizedBox(
            height: 20,
          ),
          AnimatedOpacityExample(
            opacity: isCircleVisible ? 1 : 0,
            onEnd: changeCrossFadeState,
          ),
          const SizedBox(
            height: 20,
          ),
          AnimatedCrossFadeExample(
            crossFadeState: crossFadeState,
          ),
          const SizedBox(
            height: 20,
          ),
          AnimatedAlignExample(
            isBallAligned: isBallAligned,
          )
        ],
      ),
    );
  }
}
