// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';

double generateBorderRadius() => Random().nextDouble() * 64;
double generateMargin() => Random().nextDouble() * 64;
Color generateColor() => Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF));
double generateAlignX() => Random().nextDouble() * (1-(-1))-1;
double generateAlignY() => Random().nextDouble()* (1-(-1))-1;
double generateTransformX() => Random().nextDouble();
double generateTransformZ() => Random().nextDouble();

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({super.key});
  static String routeName = '/basics/01_animated_container';

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  late Color color;
  late double borderRadius;
  late double margin;
  late double alignX;
  late double alignY;
  late double transformX;
  late double transformZ;

  @override
  void initState() {
    super.initState();
    color = Colors.deepPurple;
    borderRadius = generateBorderRadius();
    margin = generateMargin();
    alignX = generateAlignX();
    alignY = generateAlignY();
    transformX=generateTransformX();
    transformZ=generateTransformZ();

    
  }

  void change() {
    setState(() {
      color = generateColor();
      borderRadius = generateBorderRadius();
      margin = generateMargin();
      alignX = generateAlignX();
      alignY = generateAlignY();
      transformX=generateTransformX();
      transformZ=generateTransformZ();
    });
    print(alignX);
  }

  @override
  Widget build(BuildContext context) {
    // This widget is built using an AnimatedContainer, one of the easiest to use
    // animated Widgets. Whenever the AnimatedContainer's properties, such as decoration,
    // change, it will handle animating from the previous value to the new value. You can
    // specify both a Duration and a Curve for the animation.
    // This Widget is useful for designing animated interfaces that just need to change
    // the properties of a container. For example, you could use this to design expanding
    // and shrinking cards.
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: AnimatedContainer(

                alignment: Alignment(alignX, alignY),
                margin: EdgeInsets.all(margin),
                color: color,
                // decoration: BoxDecoration(
                //   color: color,
                //   borderRadius: BorderRadius.circular(borderRadius),
                // ),
                duration: const Duration(milliseconds: 400),
                child: Container(
                  transform: Matrix4.diagonal3Values(transformX,1,transformZ),
                  height: 30,
                  width: 30,
                  color: Colors.red,
                ),
              ),
            ),
            ElevatedButton(
              child: const Text(
                'change',
              ),
              onPressed: () => change(),
            ),
          ],
        ),
      ),
    );
  }
}
