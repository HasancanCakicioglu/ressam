import 'package:flutter/material.dart';


class line1class extends StatelessWidget {
  const line1class({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Center(
      child: Container(
        color: Colors.blue,
        height: 350,
        width: 350,
        child: CustomPaint(
          
          painter: LinePainter(),
        ),
      ),
    ),
    );
  }
}


class LinePainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint()
    ..strokeWidth=10
    ..strokeCap=StrokeCap.round
    ..color=Colors.red
    ..isAntiAlias=true
    
    ;
    canvas.drawLine(
      Offset(size.width * 1 / 6,size.height * 1 / 2),
      Offset(size.width * 5 / 6,size.height * 1 / 2),
      paint,

    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

} 