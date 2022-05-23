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
  }

  void callAllAnimations() {
    changeCrossFadeState();
    changeCubeSize();
    changeCircleOpacity();
    changeBallState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: callAllAnimations,
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
          ),
          const SizedBox(
            height: 20,
          ),
          AnimatedOpacityExample(
            opacity: isCircleVisible ? 1 : 0,
          ),
          const SizedBox(
            height: 20,
          ),
          AnimatedCrossFadeExample(crossFadeState: crossFadeState),
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
