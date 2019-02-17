import 'package:flutter/material.dart';

class LeftControlButtonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width - 4, 0.0);
    path.arcToPoint(
      Offset(size.width - 15, size.height / 2),
      radius: Radius.circular(50),
      clockwise: false,
    );
    path.arcToPoint(
      Offset(size.width - 4, size.height),
      radius: Radius.circular(50),
      clockwise: false,
    );
    path.lineTo(size.height / 2, size.height);
    path.arcToPoint(
      Offset(0, size.height / 2),
      radius: Radius.circular(25),
      clockwise: true,
    );
    path.arcToPoint(
      Offset(size.height / 2, 0),
      radius: Radius.circular(25),
      clockwise: true,
    );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(LeftControlButtonClipper oldClipper) => false;
}
