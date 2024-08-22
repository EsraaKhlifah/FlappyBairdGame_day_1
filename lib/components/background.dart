import 'dart:async';

import 'package:day_1/game/assets.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';


import '../game/flappy_bird_game.dart';

class Background extends SpriteComponent with HasGameRef<FlappyBirdGame> {
  Background();

  @override
  Future<void> onLoad() async {
    final background = await Flame.images.load(Assets.backgorund);
    size = gameRef.size;
    sprite = Sprite(background);
  }
}
