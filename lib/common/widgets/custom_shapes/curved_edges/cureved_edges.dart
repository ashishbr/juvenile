import 'package:flutter/material.dart';

class JCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurve = Offset(0, size.height - 30);
    final lastCurve = Offset(30, size.height - 30);
    path.quadraticBezierTo(
        firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    final SfirstCurve = Offset(0, size.height - 30);
    final SlastCurve = Offset(size.width - 30, size.height - 30);
    path.quadraticBezierTo(
        SfirstCurve.dx, SfirstCurve.dy, SlastCurve.dx, SlastCurve.dy);

    final TfirstCurve = Offset(size.width, size.height - 30);
    final TlastCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(
        TfirstCurve.dx, TfirstCurve.dy, TlastCurve.dx, TlastCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
