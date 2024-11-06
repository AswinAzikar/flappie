import 'package:flame/game.dart';
import 'package:flappie/game/flappie.dart';
import 'package:flappie/utils/size_utils.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      builder: (context, child) => Sizer(
        builder: (context, orientation, deviceType) {
          return child ?? const SizedBox();
        },
      ),
      home: GameWidget(
        game: Flappie(),
      ),
    ),
  );
}
