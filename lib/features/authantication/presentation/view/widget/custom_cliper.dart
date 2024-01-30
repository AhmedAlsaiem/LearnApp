import 'package:flutter/material.dart';

class Customcliper extends CustomClipper<Path> {
  Path path = Path();

  @override
  getClip(Size size) {
    path.lineTo(0, size.height - 60);
    var fristStart = Offset(size.width, size.height);
    var fristEnd = Offset(size.width, size.height);
    path.quadraticBezierTo(
        fristStart.dx, fristStart.dy, fristEnd.dx, fristEnd.dy);
    var secandStart = Offset(size.width, size.height);
    var secandEnd = Offset(size.width, size.height);
    path.quadraticBezierTo(
        secandStart.dx, secandStart.dy, secandEnd.dx, secandEnd.dy);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
