import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  const SmallText({Key? key,required this.text, this.color = Colors.white,this.size = 12.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      color: color,
      fontSize: size
    ),);
  }
}