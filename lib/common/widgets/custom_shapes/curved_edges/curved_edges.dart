import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path=Path();
    path.lineTo(0, size.height);

    final firstStart=Offset(10, size.height-40);
    final firstEnd=Offset(size.width/4, size.height-30);
    path.quadraticBezierTo(firstStart.dx+30, firstStart.dy-10, firstEnd.dx+20, firstEnd.dy-20);

    final secondStart=Offset(size.width-30, size.height-30);
    final secondEnd=Offset(size.width, size.height-70);
    path.quadraticBezierTo(secondStart.dx-50, secondStart.dy-5, secondEnd.dx, secondEnd.dy-10);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}