import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ressam/Game/SnackGame/snackGameBenim/snackController.dart';

class keyboardHandler{
  late SnackController _snackController;

  keyboardHandler(){
    _snackController = SnackController();
  }

  void handleKeyboardEvent(RawKeyEvent event) {
    if (event is RawKeyDownEvent) {
      final physicalKey = event.data.physicalKey;
      
      if (physicalKey == PhysicalKeyboardKey.arrowDown) {
        _snackController.snackDirection = SnackDirectionEnum.Down;
        
      } else if (physicalKey == PhysicalKeyboardKey.arrowUp) {
        print("bastık");
        _snackController.snackDirection = SnackDirectionEnum.Up;
      } else if (physicalKey == PhysicalKeyboardKey.arrowRight) {
        _snackController.snackDirection = SnackDirectionEnum.Right;
      } else if (physicalKey == PhysicalKeyboardKey.arrowLeft) {
        _snackController.snackDirection = SnackDirectionEnum.Left;
      }

      
    }
  }

}