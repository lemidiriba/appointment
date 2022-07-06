import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final bool boldFont;
  const SmallText({
    Key? key,
    required this.text,
    this.color = const Color.fromARGB(255, 182, 182, 182),
    this.size = 13.0,
    this.boldFont = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size, letterSpacing: 1.5,fontWeight: boldFont == true? FontWeight.bold:FontWeight.normal),
    );
  }
}
