import 'package:flutter/material.dart';


class relativeLineToClass extends StatelessWidget {
  const relativeLineToClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Center(
      child: Container(
        color: Colors.blue,
        height: 350,
        width: 350,
        child: CustomPaint(
          
          painter: relativeLineToClassPainter(),
        ),
      ),
    ),
    );
  }
}


class relativeLineToClassPainter extends CustomPainter{
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
    path.moveTo(size.width / 4, size.height / 4);
    path.relativeLineTo(size.width / 2, size.height / 2);
    

    path.moveTo(0,0);
    path.relativeLineTo(size.width/4,size.height/2);

    path.moveTo(size.width,0);
    path.lineTo(size.width-20,size.height/2);

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}