import 'package:apointment/constants/colors.dart';
import 'package:flutter/material.dart';

class CirculatIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color iconBackgrounColor;
  const CirculatIcon(
      {Key? key,
      required this.icon,
      this.color = Colors.white,
      this.iconBackgrounColor = AppColors.primaryColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: iconBackgrounColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Icon(icon,color: color,),
    );
  }
}
