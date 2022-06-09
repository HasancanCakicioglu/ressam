import 'package:flutter/material.dart';

class GridWidget extends StatelessWidget {
  

  const GridWidget( {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Center(
      child: Container(
        color: Colors.blue,
        height: 350,
        width: 350,
        child: CustomPaint(
          
          painter: GridPainter()
        ),
      ),
    ),
    );
  }
}

////////////////////////////
///



class GridPainter extends CustomPainter {
  final double boxSize = 50;

  @override
  void paint(Canvas canvas, Size size) {
    final vLines = (size.width ~/ boxSize) + 1;
    final hLines = (size.height ~/ boxSize) + 1;

    final paint = Paint()
      ..strokeWidth = 1
      ..color = Colors.red
      ..style = PaintingStyle.stroke;

    final path = Path();

    // Draw vertical lines
    for (var i = 0; i < vLines; ++i) {
      final x = boxSize * i;
      path.moveTo(x, 0);
      //path.relativeLineTo(0, size.height);
      path.lineTo(x, size.height);
    }

    // Draw horizontal lines
    for (var i = 0; i < hLines; ++i) {
      final y = boxSize * i;
      path.moveTo(0, y);
      path.relativeLineTo(size.width, 0);
      //path.lineTo(size.width, 0);
    }
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

