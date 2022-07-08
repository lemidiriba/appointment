import 'package:apointment/constants/colors.dart';
import 'package:apointment/widgets/column_text.dart';
import 'package:apointment/widgets/rectangle_image.dart';
import 'package:apointment/widgets/small_text.dart';
import 'package:flutter/material.dart';

class IncludedProgram extends StatelessWidget {
  final String image;
  final String textOne;
  final String textTwo;
  final String smallText;
  const IncludedProgram({
    Key? key,
    required this.image,
    required this.textOne,
    required this.textTwo,
    required this.smallText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            RectangleImage(
              image: image,
              border: false,
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ColumnText(
                  textOne: textOne,
                  textTwo: textTwo,
                ),
                const SizedBox(
                  width: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   const Icon(
                      Icons.pin_drop,
                      color: Colors.grey,
                    ),
                    SmallText(text: smallText),
                  ],
                ),
              ],
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 15, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SmallText(text: "March 21_2019 / 9:30 AM "),
              SmallText(
                text: "More...",
                color: AppColors.secondaryColor,
              ),
            ],
          ),
        ),
        const Divider(
          height: 10,
          color: AppColors.bgColor,
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
