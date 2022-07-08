import 'package:apointment/constants/colors.dart';
import 'package:apointment/utility/dimention.dart';
import 'package:apointment/widgets/column_text.dart';
import 'package:apointment/widgets/rectangle_image.dart';
import 'package:apointment/widgets/small_text.dart';
import 'package:flutter/material.dart';

class TraningProgram extends StatelessWidget {
   final String image ;
   final String textOne;
   final String textTwo;
  const TraningProgram({Key? key,required this.image,required this.textOne,required this.textTwo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         RectangleImage(
          image: image,
          border: false,
          width: Dimension.width190,
          height: Dimension.height150,
        ),
        SizedBox(height: Dimension.height10,),
        ColumnText(
          textOne: textOne,
          textTwo: textTwo,
        ),
      ],
    );
  }
}
