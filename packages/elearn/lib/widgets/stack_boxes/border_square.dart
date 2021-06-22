import 'package:flutter/material.dart';

class BorderSquare extends StatelessWidget {
  final double width;
  final Color color;
  final Color borderColor;

  const BorderSquare({
    Key? key,
    required this.width,
    required this.color,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 3.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(width / 10)),
        color: color,
      ),
      width: width,
      height: width,
      child: null,
    );
  }
}
