import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  const BigText({Key? key,required this.text, this.color = Colors.white,this.size = 20.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      color: color,
      fontSize: size,
      letterSpacing: 1.5 
    ),);
  }
}