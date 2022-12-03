import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ressam/Game/SnackGame/snackGameBenim/audioController.dart';
import 'package:ressam/Game/SnackGame/snackGameBenim/foodController.dart';
import 'package:ressam/Game/SnackGame/snackGameBenim/keyboardHandler.dart';
import 'package:ressam/Game/SnackGame/snackGameBenim/snackController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final FocusNode keyboardListenerFocusNode = FocusNode();
  keyboardHandler _keyboardHandler = keyboardHandler();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark(),
      home: RawKeyboardListener(
        onKey: (event) {
            
            if (event is RawKeyDownEvent) {
              _keyboardHandler.handleKeyboardEvent(event);
            }
          },focusNode: FocusNode(), child: Home()),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late Timer timer;
  late SnackController _snackController;
  late FoodController _foodController;
  late AudioController _audioController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _snackController = SnackController();
    _foodController = FoodController();
    _foodController.changeFoodPosition();
    _audioController = AudioController();

    timer = Timer.periodic(const Duration(milliseconds: 200), (timer) { 

      
      setState(() {
        _snackController.move();
      });

    });

    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) { 
      
    //   });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
    AudioController.themeMusic.dispose();
    AudioController.yemMusic.dispose();
    
    
  }

  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SnackGame"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                flex: 6,
                child: GridView.builder(
                    itemCount: 100,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 10,
                    ),
                    itemBuilder: (context, index) {
                     return  _snackController.snackPosition.contains(index) ? Container(color: Colors.red,) : _foodController.foodPosition == index ? Container(color: Colors.pink,) :

                      Container(
                        child: Text(index.toString()),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                      );
                    })),
            Expanded(flex: 2, child: Column(
              children: [
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttonum("down",_snackController,SnackDirectionEnum.Down),
                buttonum("up",_snackController,SnackDirectionEnum.Up),
                buttonum("right",_snackController,SnackDirectionEnum.Right),
                buttonum("left",_snackController,SnackDirectionEnum.Left),
              ],
            ),
            Row(
              children: [
                musicButton("theme",_audioController.toggleThemeMusic),
                musicButton("yem",_audioController.toggleYemMusic),
              ],
            )
              ],
            ))
          ],
        ),
      ),
    );
  }
}

Widget musicButton(String name,Function func){
  return InkWell(
    onTap: (){
      func.call();
    },
    child: Container(width: 50,height: 50,child: Center(child: Text(name),),color: Color.fromARGB(255, 255, 0, 0),),);
}


Widget buttonum(String text,SnackController _snackController,SnackDirectionEnum _enum){
  return InkWell(
    onTap: (){
      _snackController.snackDirection=_enum;
    },
    child: Container(width: 50,height: 50,child: Center(child: Text(text),),color: Colors.orange,),);
}