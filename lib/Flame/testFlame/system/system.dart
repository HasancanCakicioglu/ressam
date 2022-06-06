import 'package:dashbook/dashbook.dart';
import 'package:flame/game.dart';
import 'package:ressam/Flame/testFlame/system/overlays.dart';
import 'package:ressam/Flame/testFlame/system/pauseResume.dart';
import 'package:ressam/Flame/testFlame/system/withoutFlameGame.dart';

void addSystemStories(Dashbook dashbook) {
  dashbook.storiesOf('System')
    ..add(
      'Pause/resume engine',
      (_) => GameWidget(game: PauseResumeExample()),
      //codeLink: baseLink('system/pause_resume_example.dart'),
      info: PauseResumeExample.description,
    )
    ..add(
      'Overlay',
      overlayBuilder,
      //codeLink: baseLink('system/overlays_example.dart'),
      info: OverlaysExample.description,
    )
    ..add(
      'Without FlameGame',
      (_) => GameWidget(game: NoFlameGameExample()),
      //codeLink: baseLink('system/without_flamegame_example.dart'),
      info: NoFlameGameExample.description,
    );
}
