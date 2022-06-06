import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';

class TimerExample extends FlameGame with TapDetector {
  static const String description = '''
    This example shows how to use the `Timer`.\n\n
    Tap down to start the countdown timer, it will then count to 5 and then stop
    until you tap the canvas again and it restarts.
  ''';

  final TextPaint textConfig = TextPaint(
    style: const TextStyle(color: Colors.white, fontSize: 20),
  );
  late Timer countdown;
  late Timer interval;
  TimerComponent? deneme;

  int elapsedSecs = 0;

  @override
  Future<void> onLoad() async {
    countdown = Timer(5);
    interval = Timer(
      1,
      onTick: () => elapsedSecs += 1,
      repeat: true,
    );
    interval.start();
    add(deneme=TimerComponent(period: 1,repeat: true,removeOnFinish: true,autoStart: true,onTick: (){
      print("hello");
    }));
   
  }

  @override
  void onTapDown(_) {
    countdown.start();
    deneme?.removeFromParent();
  }

  @override
  void update(double dt) {
    super.update(dt);
    countdown.update(dt);
    interval.update(dt);
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    textConfig.render(
      canvas,
      'Countdown: ${countdown.current.toStringAsPrecision(3)}',
      Vector2(30, 100),
    );
    textConfig.render(canvas, 'Elapsed time: $elapsedSecs', Vector2(30, 130));
  }
}
