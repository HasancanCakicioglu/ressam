import 'package:flutter/material.dart';

class halkaClass extends StatelessWidget {
  

  const halkaClass( {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Center(
      child: Container(
        color: Colors.blue,
        height: 350,
        width: 350,
        child: CustomPaint(
          
          painter: HalkaPainter()
        ),
      ),
    ),
    );
  }
}

////////////////////////////
///



class HalkaPainter extends CustomPainter {
  final double boxSize = 50;

  @override
  void paint(Canvas canvas, Size size) {
    

    final paint = Paint()
      ..strokeWidth = 1
      ..color = Colors.red
      ..style = PaintingStyle.stroke;

    Path path = Path();

    for (var i = 0; i < 10; i++) {
        canvas.drawCircle(Offset(size.width/2,size.height/2),i*10, paint);
    }  

   
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

