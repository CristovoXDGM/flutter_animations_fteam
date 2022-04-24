import 'package:flutter_animations_fteam/app/modules/animated_ball/presenter/pages/animated_ball_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => const AnimatedBallPage())];
}
