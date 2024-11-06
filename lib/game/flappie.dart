import 'package:flame/game.dart';
import 'package:flappie/components/background.dart';
import 'package:flappie/components/bird.dart';
import 'package:flappie/components/land.dart';

class Flappie extends FlameGame {
  late Bird bird;
  @override
  Future<void> onLoad() async {
    addAll([
      Background(),
      Land(),
      Bird(),
    ]);
  }
}
