import 'package:flutter/material.dart';


class conicToClass extends StatelessWidget {
  const conicToClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Center(
      child: Container(
        color: Colors.blue,
        height: 350,
        width: 350,
        child: CustomPaint(
          
          painter: conicToClassPainter(),
        ),
      ),
    ),
    );
  }
}


class conicToClassPainter extends CustomPainter{
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
    path.conicTo(size.width / 4,3 * size.height / 4,size.width,size.height,20);
    // SONDAKİ 20  kırılmayı gösteriyor 0 dersen düz çizgi olur arttırısan çok keskin dönüş olur
    

    canvas.drawPath(path, paint);

    

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}