import 'package:flutter/material.dart';

class WebinarText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  const WebinarText({
    super.key,
    required this.text,
    required this.size,
    required this.color,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: 'SignikaNegative',
        fontWeight: weight,
        decoration: TextDecoration.none,
      ),
    );
  }
}
