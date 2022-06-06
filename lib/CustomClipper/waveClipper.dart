import 'package:flutter/material.dart';


class waveClipperclass extends StatefulWidget {
  waveClipperclass({Key? key}) : super(key: key);

  @override
  State<waveClipperclass> createState() => _waveClipperclassState();
}

class _waveClipperclassState extends State<waveClipperclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        child: Stack(
          children: [
            Opacity(opacity: 0.5,
            child: ClipPath(
              clipper: WaveClipper(),
              child: Container(
              color: Colors.deepOrangeAccent,
              height: 200,
            ),
            ),
            ),
            ClipPath(
              clipper: WaveClipper(),
              child: Container(
              color: Colors.deepOrangeAccent,
              height: 180,
              alignment: Alignment.center,
              child: Text("*** Wave Clipper ***"),
            ),
            ),
          ],
        ),
      ),
    );
  }
  
}

class WaveClipper extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0,size.height);
    var firstStart = Offset(size.width / 5,size.height);

    var firstEnd = Offset(size.width / 2.25,size.height -50.0);
    
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx,firstEnd.dy);

    var secondStart = Offset(size.width - (size.width / 3.24),size.height -105);

    var secondEnd = Offset(size.width,size.height-10);

    path.quadraticBezierTo(secondStart.dx, secondStart.dy,secondEnd.dx,secondEnd.dy);
    path.lineTo(size.width,0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }


}