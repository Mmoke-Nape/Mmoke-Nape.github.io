import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoeOnHover extends StatefulWidget {
  final Widget Function(bool isHovered) builder;

  const ShoeOnHover({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  _ShoeOnHoverState createState() => _ShoeOnHoverState();
}

class _ShoeOnHoverState extends State<ShoeOnHover> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hovered = Matrix4.identity()..translate(-1, -20, 4);

    final transform = isHovered ? hovered : Matrix4.identity();

    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: transform,
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
