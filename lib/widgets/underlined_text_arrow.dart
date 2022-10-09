import 'package:flutter/material.dart';
import 'package:personal_website/widgets/on_hover.dart';

class UnderlinedTextArrow extends StatefulWidget {
  const UnderlinedTextArrow({
    Key? key,
    required this.text,
    required this.color,
    this.textSize = 17,
    this.iconSize = 20,
    this.press,
  }) : super(key: key);

  final String text;
  final Color color;
  final double? textSize;
  final double? iconSize;
  final Function? press;

  @override
  State<UnderlinedTextArrow> createState() => _UnderlinedTextArrowState();
}

class _UnderlinedTextArrowState extends State<UnderlinedTextArrow> {
  @override
  Widget build(BuildContext context) {
    return OnHover(
        isNav: false,
        builder: (isHovered) {
          return Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: widget.color),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  widget.text,
                  style: TextStyle(
                    color: widget.color,
                    // decoration: TextDecoration.underline,
                    // decorationThickness: 1.5,
                    fontSize: widget.textSize,
                  ),
                ),
                const SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward,
                  color: widget.color,
                  size: widget.iconSize,
                ),
              ],
            ),
          );
        });
  }
}
