import 'package:flutter/material.dart';

class RightControlButtonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width - size.height / 2, 0.0);
    path.arcToPoint(
      Offset(size.width, size.height / 2),
      radius: Radius.circular(25),
    );
    path.arcToPoint(
      Offset(size.width - size.height / 2, size.height),
      radius: Radius.circular(25),
    );
    path.lineTo(4, size.height);
    path.arcToPoint(
      Offset(15, size.height / 2),
      radius: Radius.circular(50),
      clockwise: false,
    );
    path.arcToPoint(
      Offset(4, 0),
      radius: Radius.circular(50),
      clockwise: false,
    );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(RightControlButtonClipper oldClipper) => false;
}
