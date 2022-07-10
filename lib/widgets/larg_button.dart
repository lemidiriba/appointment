import 'package:apointment/constants/colors.dart';
import 'package:apointment/widgets/small_text.dart';
import 'package:flutter/material.dart';

class LargButton extends StatelessWidget {
  final String text;
  const LargButton({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 45,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(25)
      ),
      child: Center(child: SmallText(text: text,color: Colors.white,)),
    );
  }
}
