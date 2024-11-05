import 'package:flame/game.dart';
import 'package:flappie/components/background.dart';

class Flappie extends FlameGame {
  @override
 Future <void> onLoad() async {
    add(Background());
  }
}
