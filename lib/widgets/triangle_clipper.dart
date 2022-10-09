import 'package:flutter/material.dart';

class TriangleClipper extends CustomClipper<Path> {
  // AppClipper(
  //     {required this.cornerSize,
  //     required this.diagonalHeight,
  //     this.roundedBottom = true});

  @override
  Path getClip(Size size) {
    Path path = new Path();

    path.moveTo(size.width * .5, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    // path.lineTo(size.width * .2, size.height);
    // path.lineTo(0, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
