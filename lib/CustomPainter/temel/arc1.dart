import 'package:flutter/material.dart';


class arc1class extends StatelessWidget {
  const arc1class({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Center(
      child: Container(
        color: Colors.blue,
        height: 350,
        width: 350,
        child: CustomPaint(
          
          painter:ArcPainter(),
        ),
      ),
    ),
    );
  }
}


class ArcPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

        final paint = Paint()
    ..strokeWidth=10
    ..strokeCap=StrokeCap.round
    ..color = Colors.red
    ..style = PaintingStyle.stroke
    
    
    ;

    final arc1 = Path();
    arc1.moveTo(size.width * 0.2,size.height * 0.2);
    arc1.arcToPoint(Offset(size.width * 0.8,size.height * 0.2),
    radius: Radius.circular(250),
    clockwise: false
    );

    canvas.drawPath(arc1, paint);

    


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}