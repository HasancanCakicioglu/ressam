import 'package:flutter/material.dart';
import 'package:ressam/Game/SnackGame/snackGameBenim/foodController.dart';


enum SnackDirectionEnum{
  Up,
  Down,
  Left,
  Right,
}

class SnackController {

  final FoodController foodController = FoodController();


  static SnackController? _instance;

  factory SnackController() => _instance ??= SnackController._init();

  SnackController._init();

  List<int> snackPosition= [15,25,35];

  SnackDirectionEnum snackDirection = SnackDirectionEnum.Down;

  move(){
    switch (snackDirection) {
      case SnackDirectionEnum.Down:
          if(!controlFoodSnackEat()){
            snackPosition.removeAt(0);
          }
          
          snackPosition.add(snackPosition.last+10);
        break;
      case SnackDirectionEnum.Up:
          if(!controlFoodSnackEat()){
            snackPosition.removeAt(0);
          }
          snackPosition.add(snackPosition.last-10);
        break;
      case SnackDirectionEnum.Right:
          if(!controlFoodSnackEat()){
            snackPosition.removeAt(0);
          }
          snackPosition.add(snackPosition.last+1);
        break;
      case SnackDirectionEnum.Left:
          if(!controlFoodSnackEat()){
            snackPosition.removeAt(0);
          }
          snackPosition.add(snackPosition.last-1);
        break;      
      default:
    }
  }

  //snack yemi yedimi
  bool controlFoodSnackEat(){
    if(snackPosition.contains(foodController.foodPosition)){
      foodController.changeFoodPosition();
      return true;
    }
    return false;
  }



}