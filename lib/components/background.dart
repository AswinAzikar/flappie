import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flappie/constants/constants.dart';

import 'package:flappie/game/flappie.dart';
import 'package:flappie/gen/assets.gen.dart';

class Background extends SpriteComponent with HasGameRef<Flappie> {
  Background();

  @override
  Future<void> onLoad() async {
  
String backGroundImage = pathLoaderFunctionForFlame(Assets.images.background.path);

    final backgroundImage = await Flame.images.load(backGroundImage);
    size = gameRef.size;
    sprite = Sprite(backgroundImage);
  }
}
