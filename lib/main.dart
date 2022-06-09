import 'package:flutter/material.dart';
import 'package:ressam/CustomClipper/animationWave.dart';
import 'package:ressam/CustomClipper/pageMiddleClipper.dart';
import 'package:ressam/CustomClipper/waveClipper.dart';
import 'package:ressam/CustomPainter/goodUi/clock1.dart';
import 'package:ressam/CustomPainter/goodUi/grid.dart';
import 'package:ressam/CustomPainter/goodUi/halka.dart';
import 'package:ressam/CustomPainter/goodUi/navigationBar1.dart';
import 'package:ressam/CustomPainter/temel/RoundedRectangle1.dart';
import 'package:ressam/CustomPainter/temel/addArc.dart';
import 'package:ressam/CustomPainter/temel/addOval.dart';
import 'package:ressam/CustomPainter/temel/addPath.dart';
import 'package:ressam/CustomPainter/temel/addRRect.dart';
import 'package:ressam/CustomPainter/temel/addRect.dart';
import 'package:ressam/CustomPainter/temel/arc1.dart';
import 'package:ressam/CustomPainter/temel/arcTo.dart';
import 'package:ressam/CustomPainter/temel/circle1.dart';
import 'package:ressam/CustomPainter/temel/color.dart';
import 'package:ressam/CustomPainter/temel/conicTo.dart';
import 'package:ressam/CustomPainter/temel/cubicTo.dart';
import 'package:ressam/CustomPainter/temel/image.dart';
import 'package:ressam/CustomPainter/temel/line1.dart';
import 'package:ressam/CustomPainter/temel/polygon.dart';
import 'package:ressam/CustomPainter/temel/quadradicBezierTo.dart';
import 'package:ressam/CustomPainter/temel/rectangle1.dart';
import 'package:ressam/CustomPainter/temel/relativeLineTo.dart';
import 'package:ressam/CustomPainter/temel/relativeQuadraticBezierTo.dart';
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
          goNavigate(context,quadradicBezierTo(),"quadradicBezierTo"),
          goNavigate(context,cubicToClass(),"CubicTo"),
          goNavigate(context,conicToClass(),"ConicTo"),
          goNavigate(context,arcToClass(),"arcTo"),
          goNavigate(context,addRectToClass(),"addRect"),
          goNavigate(context,addOvalToClass(),"addOval"),
          goNavigate(context,addArcToClass(),"addArc"),
          goNavigate(context,polygonClass(),"polygon"),
          goNavigate(context,addRRectClass(),"addRRect"),
          goNavigate(context,addPathToClass(),"addPath"),
          goNavigate(context,relativeLineToClass(),"relativeLineTo"),
          goNavigate(context,relativeQuadraticBezierToClass(),"relativeQuatraticBezierTo"),
          goNavigate(context,colorClass(),"color"),
          goNavigate(context,imageCanvasClass(title: "image canvas"),"image"),
          
          Divider(thickness: 5,color: Colors.black,),
          goNavigate(context,navigationBar1class(),"navigationBar"),
          goNavigate(context,clock1class(),"clock"),
          goNavigate(context,GridWidget(),"Grid"),
          goNavigate(context,halkaClass(),"halka"),
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

