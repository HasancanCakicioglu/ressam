import 'package:flutter/material.dart';


class pageMiddleclipperclass extends StatelessWidget {
  const pageMiddleclipperclass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ClipPath(
        clipper: pageMiddle(),
        child: Container(
          color: Colors.greenAccent,
        ),
      ),
    );
  }
}

class pageMiddle extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();


    path.lineTo(0,0);
    path.lineTo(size.width/2.2,0);

  
  

    path.lineTo(size.width/2.2,size.height/2.2);

    path.quadraticBezierTo(size.width/12,size.height/2,size.width/2.2,size.height/1.8,);
    
    
    
    

    path.lineTo(size.width/2.2,size.height/1.8);

    

    path.lineTo(size.width/2.2,size.height);
    path.lineTo(0,size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }




}