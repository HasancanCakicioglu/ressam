import 'package:dashbook/dashbook.dart';
import 'package:flame/game.dart';
import 'package:ressam/Flame/testFlame/animation/asepriteAnimation.dart';
import 'package:ressam/Flame/testFlame/animation/basicAnimation.dart';
import 'package:ressam/Flame/testFlame/animation/groupAnimation.dart';
import 'package:flutter/material.dart';
import 'package:ressam/Flame/testFlame/cameraAndViewport/runCamera.dart';


void addAnimationStories(Dashbook dashbook) {
  dashbook.storiesOf('Animations')
    ..add(
      'Basic Animations',
      (_) => GameWidget(game: BasicAnimationsExample()),
      //codeLink: baseLink('animations/basic_animation_example.dart'),
      info: BasicAnimationsExample.description,
    )
    ..add(
      'Group animation',
      (_) => GameWidget(game: AnimationGroupExample()),
      //codeLink: baseLink('animations/aseprite_example.dart'),
      info: AnimationGroupExample.description,
    )
    ..add(
      'Aseprite',
      (_) => GameWidget(game: AsepriteExample()),
      //codeLink: baseLink('animations/aseprite_example.dart'),
      info: AsepriteExample.description,
    );
}
