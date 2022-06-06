import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:ressam/Flame/testFlame/Flare/flare.dart';
import 'package:ressam/Flame/testFlame/animation/runAnimation.dart';
import 'package:ressam/Flame/testFlame/cameraAndViewport/runCamera.dart';
import 'package:ressam/Flame/testFlame/collision/collision.dart';
import 'package:ressam/Flame/testFlame/components/component.dart';
import 'package:ressam/Flame/testFlame/effects/effect.dart';
import 'package:ressam/Flame/testFlame/input/input.dart';
import 'package:ressam/Flame/testFlame/parallax/parallax.dart';
import 'package:ressam/Flame/testFlame/rendering/rendering.dart';
import 'package:ressam/Flame/testFlame/sprites/sprites.dart';
import 'package:ressam/Flame/testFlame/svg/svg.dart';
import 'package:ressam/Flame/testFlame/system/system.dart';
import 'package:ressam/Flame/testFlame/utils/utils.dart';
import 'package:ressam/Flame/testFlame/widgets/widgets.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dashbook = Dashbook(
    title: 'Flame Examples',
    theme: ThemeData.dark(),
  );

  // Feature examples
  addAnimationStories(dashbook);
  addCameraAndViewportStories(dashbook);
  addComponentsStories(dashbook);
  addSystemStories(dashbook);
  addEffectsStories(dashbook);
  addUtilsStories(dashbook);
  addSvgStories(dashbook);
  addCollisionDetectionStories(dashbook);
  addInputStories(dashbook);
  addParallaxStories(dashbook);
  addWidgetsStories(dashbook);
  addSpritesStories(dashbook);
  addRenderingStories(dashbook);
  addFlare(dashbook);
  
  

  runApp(dashbook);
}
