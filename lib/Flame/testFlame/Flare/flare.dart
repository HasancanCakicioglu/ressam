import 'package:dashbook/dashbook.dart';

import 'package:flame/game.dart';
import 'package:ressam/Flame/testFlame/Flare/flare_example.dart';



void addFlare(Dashbook dashbook) {
  dashbook.storiesOf('Flare')
    .add(
      'Flare',
      (_) => GameWidget(game: FlareExample()),
      
      info: FlareExample.description,
    );
    
}
