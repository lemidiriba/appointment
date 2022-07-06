import 'package:apointment/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ColumnText extends StatelessWidget {
  final String textOne;
  final String textTwo;
  final bool alighnStart;
  const ColumnText({Key? key,required this.textOne,required this.textTwo,this.alighnStart = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alighnStart == true ? CrossAxisAlignment.start:CrossAxisAlignment.center,
      children: [
        SmallText(text: textOne,boldFont: true, ),
        const SizedBox(height:5),
        SmallText(text: textTwo, )
      ],
    );
  }
}