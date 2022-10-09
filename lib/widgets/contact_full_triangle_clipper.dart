import 'package:flutter/material.dart';

class ContactFullTriangleClipper extends CustomClipper<Path> {
  // AppClipper(
  //     {required this.cornerSize,
  //     required this.diagonalHeight,
  //     this.roundedBottom = true});

  @override
  Path getClip(Size size) {
    Path path = new Path();

    path.moveTo(size.width * .07, 0);
    path.lineTo(size.width, size.height * .6);
    path.lineTo(0, size.height);
    // path.lineTo(size.width * .2, size.height);
    // path.lineTo(0, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
