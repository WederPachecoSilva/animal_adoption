import 'package:flutter/material.dart';

class AnimalImage extends StatelessWidget {
  final String imageUrl;
  final double width, height;
  final bool hasBorderRadius;

  /// Creates an image with border radius and greyish radial gradient
  const AnimalImage({
    @required this.imageUrl,
    @required this.height,
    @required this.width,
    @required this.hasBorderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius:
            hasBorderRadius ? BorderRadius.circular(15) : BorderRadius.zero,
        gradient: RadialGradient(
          center: Alignment.center,
          colors: [
            Colors.grey[100],
            Colors.grey[700],
          ],
          radius: 1,
        ),
      ),
      child: Image.network(imageUrl),
    );
  }
}
