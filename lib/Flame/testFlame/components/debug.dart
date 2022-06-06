import 'dart:async';

import 'package:flame/components.dart' hide Timer;
import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';

class DebugExample extends FlameGame {
  static const String description = '''
    In this example we show what you will see when setting `debugMode = true`
    and add the `FPSTextComponent` to your game.
    This is a non-interactive example.
  ''';

  @override
  bool debugMode = true;

  @override
  Future<void> onLoad() async {
    final flameLogo = await loadSprite('flame.png');

    final flame1 = LogoComponent(flameLogo);
    flame1.x = 300;
    flame1.y = 400;

    final flame2 = LogoComponent(flameLogo);
    flame2.x = 100;
    flame2.y = 400;
    flame2.yDirection = -1;

    final flame3 = LogoComponent(flameLogo);
    flame3.x = 150;
    flame3.y = 800;
    flame3.xDirection = -1;

    add(flame1);
    add(flame2);
    add(flame3);

   // add(FpsTextComponent(position: Vector2(0, size.y - 24)));
  }
}

class LogoComponent extends SpriteComponent with HasGameRef<DebugExample> {
  static const int speed = 150;

  int xDirection = 1;
  int yDirection = 1;

  LogoComponent(Sprite sprite) : super(sprite: sprite, size: sprite.srcSize);

  @override
  Future<void> onLoad()async{
    
    Timer.periodic(Duration(seconds: 3), (a){
      debugPrint("right = "+toRect().right.toString());
      debugPrint("bottom = "+toRect().bottom.toString());
    });
  }

  @override
  void update(double dt) {
    x += xDirection * speed * dt;

    final rect = toRect();

    if ((x <= 0 && xDirection == -1) ||
        (rect.right >= gameRef.size.x && xDirection == 1)) {
      xDirection = xDirection * -1;
    }

    y += yDirection * speed * dt;

    if ((y <= 0 && yDirection == -1) ||
        (rect.bottom >= gameRef.size.y && yDirection == 1)) {
      yDirection = yDirection * -1;
    }
  }
}
