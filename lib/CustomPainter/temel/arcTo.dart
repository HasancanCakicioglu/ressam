import 'dart:math' as math;

import 'package:flutter/material.dart';


class arcToClass extends StatelessWidget {
  const arcToClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Center(
      child: Container(
        color: Colors.blue,
        height: 350,
        width: 350,
        child: CustomPaint(
          
          painter: arcToClassPainter(),
        ),
      ),
    ),
    );
  }
}


class arcToClassPainter extends CustomPainter{
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


    //degToRad(0) = 0.0
    //degToRad(90) = 1.5707963267948966
    Path path = Path();
    path.arcTo(Rect.fromLTWH(size.width / 2, size.height / 2, size.width / 4, size.height / 4), degToRad(0), degToRad(180), true);
    canvas.drawPath(path, paint);
    

    

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}