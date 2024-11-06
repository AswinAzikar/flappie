import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/parallax.dart';
import 'package:flappie/configuration/config.dart';
import 'package:flappie/constants/constants.dart';
import 'package:flappie/gen/assets.gen.dart';

class Land extends ParallaxComponent {



@override
  void update(double dt) {




  
    super.update(dt);

    parallax?.baseVelocity.x = Config.gameSpeed;

  }

  @override
  Future<void> onLoad() async {
    final landImage =
        imagePathLoaderFunctionForFlame(Assets.images.ground.path);
    final land = await Flame.images.load(landImage);

  parallax = Parallax([
      ParallaxLayer(
        ParallaxImage(land, fill: LayerFill.none),
      )
    ]);



    return super.onLoad();
  }
}
