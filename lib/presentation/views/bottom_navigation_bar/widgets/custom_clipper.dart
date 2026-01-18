import 'package:flutter/material.dart';

class _Constant {
  double heightOval = 60.0;
}

class OvalBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - _Constant().heightOval); // Start from top-left, go down
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - _Constant().heightOval,
    ); // Oval curve
    path.lineTo(size.width, 0); // Go up to top-right
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false; // No need to re-clip if the shape is static
  }
}


class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // Example: Create a triangle shape
    path.moveTo(size.width / 2, 0); // Top center
    path.lineTo(0, size.height); // Bottom left
    path.lineTo(size.width, size.height); // Bottom right
    path.close(); // Close the path to form a complete shape
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false; // Or true if you need dynamic re-clipping
  }
}
