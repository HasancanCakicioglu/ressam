import 'package:flutter/material.dart';
import 'package:ressam/CustomClipper/animationWave.dart';
import 'package:ressam/CustomClipper/pageMiddleClipper.dart';
import 'package:ressam/CustomClipper/waveClipper.dart';
import 'package:ressam/CustomPainter/goodUi/clock1.dart';
import 'package:ressam/CustomPainter/goodUi/navigationBar1.dart';
import 'package:ressam/CustomPainter/temel/RoundedRectangle1.dart';
import 'package:ressam/CustomPainter/temel/arc1.dart';
import 'package:ressam/CustomPainter/temel/circle1.dart';
import 'package:ressam/CustomPainter/temel/line1.dart';
import 'package:ressam/CustomPainter/temel/rectangle1.dart';
import 'package:ressam/CustomPainter/temel/triangle.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Wrap(
        children: [
          goNavigate(context,line1class(),"line"),
          goNavigate(context,arc1class(),"arc"),
          goNavigate(context,Circle1class(),"circle"),
          goNavigate(context,rectangle1class(),"rectangle"),
          goNavigate(context,RoundedRectangle1class(),"roundedrectangle"),
          goNavigate(context,triangle1class(),"triangle"),
          
          Divider(thickness: 5,color: Colors.black,),
          goNavigate(context,navigationBar1class(),"navigationBar"),
          goNavigate(context,clock1class(),"clock"),
          Divider(thickness: 5,color: Colors.black,),
          goNavigate(context,waveClipperclass(),"waveClipper"),
          goNavigate(context,pageMiddleclipperclass(),"pageMiddleClipper"),
          goNavigate(context,animationWave1class(),"animationWave"),
          Divider(thickness: 5,color: Colors.black,),
          //goNavigate(context,,"girlSkater"),
          
        ],
      ),
    );
  }
  Widget goNavigate(BuildContext context,Widget child ,String text){
    return ElevatedButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>child));
    }, child: Text(text));
  }
}

