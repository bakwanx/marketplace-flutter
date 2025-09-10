import 'package:flutter/material.dart';

class ZoomImage extends StatelessWidget {
  final String imageUrl;

  const ZoomImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      minScale: 0.1,
      maxScale: 1.6,
      child: Image.network(imageUrl,fit: BoxFit.fitWidth,),
    );
  }
}
