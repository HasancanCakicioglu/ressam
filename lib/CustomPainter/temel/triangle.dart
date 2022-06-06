import 'package:flutter/material.dart';


class triangle1class extends StatelessWidget {
  const triangle1class({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Center(
      child: Container(
        color: Colors.blue,
        height: 350,
        width: 350,
        child: CustomPaint(
          
          painter: TrianglePainter(),
        ),
      ),
    ),
    );
  }
}


class TrianglePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

        final paint = Paint()
    ..strokeWidth=10
    ..strokeCap=StrokeCap.round
    ..color = Colors.red
    ..style = PaintingStyle.stroke
    
    ;

    final path = Path();
    path.moveTo(size.width * 1 / 2,size.height * 1 / 4);
    path.lineTo(size.width * 1 / 6,size.height * 3 / 4);
    path.lineTo(size.width * 5 / 6,size.height * 3 / 4);
    //path.lineTo(size.width * 1 / 2,size.height * 1 / 4); aynısı buda işe yarar
    path.close();

    canvas.drawPath(path, paint);

    


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}
