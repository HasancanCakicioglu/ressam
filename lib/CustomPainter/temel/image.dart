import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:typed_data';

class imageCanvasClass extends StatefulWidget {
  imageCanvasClass({Key? key,required this.title}) : super(key: key);

  final String title;

  @override
  _imageCanvasClassState createState() =>  _imageCanvasClassState();
}

class _imageCanvasClassState extends State<imageCanvasClass> {
  late ui.Image image;
  bool isImageloaded = false;
  void initState() {
    super.initState();
    init();
  }

  Future <Null> init() async {
    final ByteData data = await rootBundle.load('assets/images/lake.jpg');
    image = await loadImage(Uint8List.view(data.buffer));
  }

  Future<ui.Image> loadImage(Uint8List img) async {
    final Completer<ui.Image> completer =  Completer();
    ui.decodeImageFromList(img, (ui.Image img) {
      setState(() {
        isImageloaded = true;
      });
      return completer.complete(img);
    });
    return completer.future;
  }

  Widget _buildImage() {
    if (isImageloaded) {
      return  CustomPaint(
          painter:  ImageEditor(image: image),
        );
    } else {
      return const Center(child:  Text('loading'));
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:  AppBar(
        title:  Text(widget.title),
      ),
      body:  Container(
        child: _buildImage(),
      )
    );
  }
}

class ImageEditor extends CustomPainter {


  ImageEditor({
    required this.image,
  });

  ui.Image image;

  @override
  void paint(Canvas canvas, Size size) {
    Future<ByteData?> data = image.toByteData();
    canvas.drawImage(image,  Offset(0.0, 0.0),  Paint());
    
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}