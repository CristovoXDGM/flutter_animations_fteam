import 'package:flutter/material.dart';

class ExplicitAnimationPage extends StatefulWidget {
  const ExplicitAnimationPage({Key? key}) : super(key: key);

  @override
  State<ExplicitAnimationPage> createState() => _ExplicitAnimationPageState();
}

class _ExplicitAnimationPageState extends State<ExplicitAnimationPage>
    with SingleTickerProviderStateMixin {
  final title = 'Animações explicitas';

  // late final AnimationController _animationController = AnimationController(
  //   duration: const Duration(seconds: 3),
  //   vsync: this,
  // )..repeat(reverse: true);

  // @override
  // void initState() {
  //   super.initState();
  //   _animationController.stop();
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _animationController.dispose();
  // }

  // void pauseAndcontinueAnimation() {
  //   if (_animationController.isAnimating) {
  //     _animationController.stop();
  //   } else {
  //     _animationController.repeat(
  //         reverse: true, period: _animationController.duration);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // pauseAndcontinueAnimation();
        },
        child: const Icon(Icons.play_arrow),
      ),
      body: Column(
        children: const [
          // SizedBox(
          //   width: MediaQuery.of(context).size.width,
          //   height: 400,
          //   child: Stack(
          //     children: [
          //       PositionedTransition(
          //         rect: RelativeRectTween(
          //           begin: const RelativeRect.fromLTRB(0, 0, 0, 370),
          //           end: const RelativeRect.fromLTRB(0, 300, 0, 0),
          //         ).animate(CurvedAnimation(
          //             parent: _animationController, curve: Curves.bounceOut)),
          //         child: Container(
          //           width: 30,
          //           height: 30,
          //           decoration: const BoxDecoration(
          //               color: Colors.red, shape: BoxShape.circle),
          //         ),
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
