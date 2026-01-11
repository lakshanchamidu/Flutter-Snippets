import 'package:flutter/material.dart';

class BottomBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, 0);
    path.lineTo(size.width * 0.35, 0);

    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.42, 25);
     path.arcToPoint(
      Offset(size.width * 0.58, 25),
      radius: const Radius.circular(35),
      clockwise: false,
    );
     path.quadraticBezierTo(
      size.width * 0.60,
      0,
      size.width * 0.65,
      0,
    );
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
