import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:ressam/Flame/girl_skater/actors/leena.dart';
import 'package:ressam/Flame/girl_skater/main.dart';
import 'package:tiled/tiled.dart';

class Gem extends SpriteComponent
    with CollisionCallbacks, HasGameRef<LeenaGame> {
  final TiledObject tiledObject;
  Gem({required this.tiledObject}) : super() {
    debugMode = true;
  }

  @override
  Future<void>? onLoad() async {
    add(RectangleHitbox());
    print(tiledObject.type);
    return super.onLoad();
  }

  @override
  void onCollision(Set<Vector2> intersectionPoints, PositionComponent other) {
    print('hit gem');
    if (other is Leena) {
      removeFromParent();
      gameRef.bonus.start();
      gameRef.magicLevel += 1;
      gameRef.overlays.notifyListeners();
    }

    super.onCollision(intersectionPoints, other);
  }
}
