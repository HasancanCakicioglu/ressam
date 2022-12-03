import 'dart:math';

import 'package:flutter/material.dart';



class FoodController {
  static FoodController? _instance;

  factory FoodController() => _instance ??= FoodController._init();

  FoodController._init();

  late int foodPosition;

  changeFoodPosition(){
    foodPosition = Random().nextInt(100);
  }

}