// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class AnimationControllerDemo extends StatefulWidget {
  const AnimationControllerDemo({Key? key}) : super(key: key);

 

  @override
  State<AnimationControllerDemo> createState() =>
      _AnimationControllerDemoState();
}

class _AnimationControllerDemoState extends State<AnimationControllerDemo>
    with SingleTickerProviderStateMixin {
  // Using the SingleTickerProviderStateMixin can ensure that our
  // AnimationController only animates while the Widget is visible on the
  // screen. This is a useful optimization that saves resources when the
  // Widget is not visible.

  static const Duration _duration = Duration(seconds: 1);
  late final AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      lowerBound: 0.5,
      upperBound: 2,
      debugLabel: "DebugLabel",
      reverseDuration: _duration,
      value: 2,
      
      vsync: this, duration: _duration)
    
      ..addListener(() {
        setState(() {});
        print(controller.value);
      });
  }

  @override
  void dispose() {
    // AnimationController is a stateful resource that needs to be disposed when
    // this State gets disposed.
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // When building the widget you can read the AnimationController's value property
    // when building child widgets. You can also check the status to see if the animation
    // has completed.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Controller'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ConstrainedBox(
              
              constraints: const BoxConstraints(maxWidth: 200),
              child: Text(
                controller.value.toStringAsFixed(2),
                style: Theme.of(context).textTheme.headline3,
                textScaleFactor: 1 + controller.value,
              ),
            ),
            ElevatedButton(
              child: const Text('animate'),
              onPressed: () {
                if (controller.status == AnimationStatus.completed) {
                  controller.reverse();
                } else {
                  controller.forward();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
