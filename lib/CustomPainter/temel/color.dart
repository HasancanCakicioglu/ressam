import 'dart:ui';

import 'package:flutter/material.dart';


class colorClass extends StatelessWidget {
  const colorClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Center(
      child: Container(
        color: Colors.red,
        height: 350,
        width: 350,
        child: CustomPaint(
          
          painter: colorClassPainter(),
        ),
      ),
    ),
    );
  }
}


class colorClassPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final center = Offset(size.width / 2,size.height/2);

        final paint = Paint()
    ..strokeWidth=10
    ..strokeCap=StrokeCap.round
    ..color = Colors.red
    ..style = PaintingStyle.stroke;



    
    canvas.drawColor(Colors.green,BlendMode.darken);

    
    

   

    

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}