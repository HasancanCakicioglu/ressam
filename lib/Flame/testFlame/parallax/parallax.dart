import 'package:dashbook/dashbook.dart';

import 'package:flame/game.dart';
import 'package:flame/parallax.dart';
import 'package:flutter/painting.dart';
import 'package:ressam/Flame/testFlame/commons/commons.dart';
import 'package:ressam/Flame/testFlame/parallax/advanced_parallax_example.dart';
import 'package:ressam/Flame/testFlame/parallax/animation_parallax_example.dart';
import 'package:ressam/Flame/testFlame/parallax/basic_parallax_example.dart';
import 'package:ressam/Flame/testFlame/parallax/component_parallax_example.dart';
import 'package:ressam/Flame/testFlame/parallax/no_fcs_parallax_example.dart';
import 'package:ressam/Flame/testFlame/parallax/sandbox_layer_parallax_example.dart';
import 'package:ressam/Flame/testFlame/parallax/small_parallax_example.dart';

void addParallaxStories(Dashbook dashbook) {
  dashbook.storiesOf('Parallax')
    ..add(
      'Basic',
      (_) => GameWidget(game: BasicParallaxExample()),
      codeLink: baseLink('parallax/basic_parallax_example.dart'),
      info: BasicParallaxExample.description,
    )
    ..add(
      'Component',
      (_) => GameWidget(game: ComponentParallaxExample()),
      codeLink: baseLink('parallax/component_parallax_example.dart'),
      info: ComponentParallaxExample.description,
    )
    ..add(
      'Animation',
      (_) => GameWidget(game: AnimationParallaxExample()),
      codeLink: baseLink('parallax/animation_parallax_example.dart'),
      info: AnimationParallaxExample.description,
    )
    ..add(
      'Non-fullscreen',
      (_) => GameWidget(game: SmallParallaxExample()),
      codeLink: baseLink('parallax/small_parallax_example.dart'),
      info: SmallParallaxExample.description,
    )
    ..add(
      'No FCS',
      (_) => GameWidget(game: NoFCSParallaxExample()),
      codeLink: baseLink('parallax/no_fcs_parallax_example.dart'),
      info: NoFCSParallaxExample.description,
    )
    ..add(
      'Advanced',
      (_) => GameWidget(game: AdvancedParallaxExample()),
      codeLink: baseLink('parallax/advanced_parallax_example.dart'),
      info: AdvancedParallaxExample.description,
    )
    ..add(
      'Layer sandbox',
      (context) {
        return GameWidget(
          game: SandboxLayerParallaxExample(
            planeSpeed: Vector2(
              context.numberProperty('plane x speed', 0),
              context.numberProperty('plane y speed', 0),
            ),
            planeRepeat: context.listProperty(
              'plane repeat strategy',
              ImageRepeat.noRepeat,
              ImageRepeat.values,
            ),
            planeFill: context.listProperty(
              'plane fill strategy',
              LayerFill.none,
              LayerFill.values,
            ),
            planeAlignment: context.listProperty(
              'plane alignment strategy',
              Alignment.center,
              [
                Alignment.topLeft,
                Alignment.topRight,
                Alignment.center,
                Alignment.topCenter,
                Alignment.centerLeft,
                Alignment.bottomLeft,
                Alignment.bottomRight,
                Alignment.bottomCenter,
              ],
            ),
          ),
        );
      },
      codeLink: baseLink('parallax/sandbox_layer_parallax_example.dart'),
      info: SandboxLayerParallaxExample.description,
    );
}
