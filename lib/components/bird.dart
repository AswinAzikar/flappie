import 'dart:async';

import 'package:flame/components.dart';
import 'package:flappie/constants/constants.dart';
import 'package:flappie/gen/assets.gen.dart';
import 'package:flappie/utils/size_utils.dart';

import '../game/flappie.dart';
import 'bird_movement.dart';

class Bird extends SpriteGroupComponent<BirdMovement> with HasGameRef<Flappie> {
  @override
  Future<void> onLoad() async {
    final midBirdFlap = await gameRef.loadSprite(
        imagePathLoaderFunctionForFlame(Assets.images.birdMidflap.path));

    final upBirdFlap = await gameRef.loadSprite(
        imagePathLoaderFunctionForFlame(Assets.images.birdUpflap.path));

    final downBirdFlap = await gameRef.loadSprite(
        imagePathLoaderFunctionForFlame(Assets.images.birdDownflap.path));

    size = Vector2(50.fSize, 40.fSize);

    current = BirdMovement.mid;

    sprites = {
      BirdMovement.up: upBirdFlap,
      BirdMovement.mid: midBirdFlap,
      BirdMovement.down: downBirdFlap
    };
    return super.onLoad();
  }
}
