import 'dart:math' as math;

import 'package:flutter/material.dart';


class addArcToClass extends StatelessWidget {
  const addArcToClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Center(
      child: Container(
        color: Colors.blue,
        height: 350,
        width: 350,
        child: CustomPaint(
          
          painter: addArcToClassPainter(),
        ),
      ),
    ),
    );
  }
}


class addArcToClassPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final center = Offset(size.width / 2,size.height/2);

        final paint = Paint()
    ..strokeWidth=10
    ..strokeCap=StrokeCap.round
    ..color = Colors.red
    ..style = PaintingStyle.stroke;



    double degToRad(num deg) => deg * (math.pi / 180.0);

    Path path = Path();
    // 180 = 3.14
    // 90 = 1.57
    path.addArc(Rect.fromLTWH(0, 0, size.width, size.height), degToRad(180), degToRad(90));
    canvas.drawPath(path, paint);

    

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}