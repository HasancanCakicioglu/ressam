import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame/palette.dart';
import 'package:flame_flare/flame_flare.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'package:flutter/material.dart';


class FlareExample extends FlameGame with TapDetector, DoubleTapDetector {

  static const String description = '''
    Flare description bu
  ''';

  //final paint = Paint()..color = Colors.red;
  final List<String> _animations = ['Wave', 'Dance'];

  int _currentAnimation = 0;
  final MinionController minionController = MinionController();

  late final MinionComponent minionComponent;

  @override
  Future<void> onLoad() async {
    add(BGComponent());
    add(minionComponent = MinionComponent(minionController));

    minionController.playStand();
    
  }

  @override
  void render(Canvas c){
    final rect = Rect.fromLTWH(50,25,1050,200);
    final paint = Paint()..color = Color.fromARGB(255, 8, 255, 74);
    c.drawRect(rect, paint);
    super.render(c);
  }

  @override
  void onTap() {
    minionController.playJump();
  }

  @override
  void onDoubleTap() {
    cycleAnimation();
  }

  void cycleAnimation() {
    _currentAnimation = (_currentAnimation + 1) % _animations.length;
    minionController.play(_animations[_currentAnimation]);
  }
}

class MinionController extends FlareControls {
  void playStand() {
    play('Stand');
  }

  void playDance() {
    play('Dance');
  }

  void playJump() {
    play('Jump');
  }

  void playWave() {
    play('Wave');
  }
}

class MinionComponent extends FlareActorComponent {
  MinionController minionController;

  MinionComponent(this.minionController)
      : super(
          FlareActorAnimation(
            'assets/Bob_Minion.flr',
            controller: minionController,
            fit: BoxFit.scaleDown,
          ),
          size: Vector2.all(300),
        );

  @override
  void render(Canvas c) {
    final rect = Rect.fromLTWH(x, y, width, height);
    final paint = Paint()..color = Color.fromARGB(255, 33, 142, 251);
    c.drawRect(rect, paint);
    super.render(c);
  }

  @override
  void onGameResize(Vector2 gameSize) {
    super.onGameResize(gameSize);
    position = (gameSize - size) / 2;
  }
}

class BGComponent extends Component with HasGameRef {
  static final paint = BasicPalette.black.paint();

  @override
  void render(Canvas c) {
    c.drawRect(gameRef.size.toRect(), paint);
  }
}