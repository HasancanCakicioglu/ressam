import 'dart:math' as math;

import 'package:flutter/material.dart';


class addPathToClass extends StatelessWidget {
  const addPathToClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Center(
      child: Container(
        color: Colors.blue,
        height: 350,
        width: 350,
        child: CustomPaint(
          
          painter: addPathToClassPainter(),
        ),
      ),
    ),
    );
  }
}


class addPathToClassPainter extends CustomPainter{
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
    path.addRRect(
        RRect.fromRectAndRadius(Rect.fromLTWH(size.width / 2, size.height / 2, size.width / 4, size.height / 4), Radius.circular(16))
    );
    Path secondPath = Path();
    secondPath.lineTo(size.width / 2, size.height / 2);
    path.addPath(secondPath, Offset(16, 16));
    canvas.drawPath(path, paint);

    

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}