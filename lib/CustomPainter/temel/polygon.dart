import 'dart:math' as math;

import 'package:flutter/material.dart';


class polygonClass extends StatelessWidget {
  const polygonClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Center(
      child: Container(
        color: Colors.blue,
        height: 350,
        width: 350,
        child: CustomPaint(
          
          painter: polygonClassPainter(),
        ),
      ),
    ),
    );
  }
}


class polygonClassPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final center = Offset(size.width / 2,size.height/2);

        final paint = Paint()
    ..strokeWidth=10
    ..strokeCap=StrokeCap.round
    ..color = Colors.red
    ..style = PaintingStyle.stroke;


  
    Path path = Path();
    path.addPolygon([
      Offset.zero,
      Offset(size.width / 4, size.height / 4),
      Offset(size.width / 2, size.height)
    ], true);//sondaki true çizilien çizginin kapanmasını sağlıyor yoksa 2çizgi olucak 

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}