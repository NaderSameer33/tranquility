import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImage extends StatelessWidget {
  const AppImage({
    super.key,
    required this.image,
    this.height,
    this.width,
    this.fit = BoxFit.scaleDown,
    this.color 
  });
  final String image;
  final double? height, width;
  final BoxFit fit;
  final Color ?color ; 

  @override
  Widget build(BuildContext context) {
    if (image.toLowerCase().endsWith('svg')) {
      return SvgPicture.asset(
        'assets/svg/$image',
        height: height,
        width: width,
        fit: fit,
        color: color,
      );
    } else if (image.startsWith('http')) {
      return Image.network(
        image,
        height: height,
        width: width,
        fit: fit,
        color: color,
      );
    } else {
      return Image.asset(
        'assets/images/$image',
        height: height,
        width: width,
        fit: fit,
        color: color,
      );
    }
  }
}
