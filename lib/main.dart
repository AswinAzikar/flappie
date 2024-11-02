import 'package:flame/game.dart';
import 'package:flappie/game/flappie.dart';
import 'package:flutter/material.dart';




final game  = Flappie();

void main() {
  runApp(GameWidget(game: game,));
}
