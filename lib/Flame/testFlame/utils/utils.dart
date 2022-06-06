import 'package:dashbook/dashbook.dart';
import 'package:flame/game.dart';
import 'package:ressam/Flame/testFlame/commons/commons.dart';
import 'package:ressam/Flame/testFlame/utils/timer.dart';
import 'package:ressam/Flame/testFlame/utils/timerComponent.dart';

void addUtilsStories(Dashbook dashbook) {
  dashbook.storiesOf('Utils')
    ..add(
      'Timer',
      (_) => GameWidget(game: TimerExample()),
      codeLink: baseLink('utils/timer_example.dart'),
      info: TimerExample.description,
    )
    ..add(
      'Timer Component',
      (_) => GameWidget(game: TimerComponentExample()),
      codeLink: baseLink('utils/timer_component_example.dart'),
      info: TimerComponentExample.description,
    );
}
