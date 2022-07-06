import 'package:apointment/constants/colors.dart';
import 'package:apointment/widgets/column_text.dart';
import 'package:apointment/widgets/rectangle_image.dart';
import 'package:apointment/widgets/small_text.dart';
import 'package:flutter/material.dart';

class IncludedProgram extends StatelessWidget {
  const IncludedProgram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const RectangleImage(image: 'assets/team-1.jpg'),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ColumnText(
                  textOne: "Penny Tool",
                  textTwo: "Arobics",
                ),
                const SizedBox(
                  width: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.pin_drop,
                      color: Colors.grey,
                    ),
                    SmallText(text: " 931 Oclahama NY - 750m away "),
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
        const SizedBox(height: 15,)
      ],
    );
  }
}
