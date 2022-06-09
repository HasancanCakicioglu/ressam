import 'package:flutter/material.dart';


class quadradicBezierTo extends StatelessWidget {
  const quadradicBezierTo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Center(
      child: Container(
        color: Colors.blue,
        height: 350,
        width: 350,
        child: CustomPaint(
          
          painter: quadradicBezierToPainter(),
        ),
      ),
    ),
    );
  }
}


class quadradicBezierToPainter extends CustomPainter{
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
    path.moveTo(0,size.height/2);
    path.quadraticBezierTo(size.width / 2,size.height,size.width,size.height/2);
    

    canvas.drawPath(path, paint);

    

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}