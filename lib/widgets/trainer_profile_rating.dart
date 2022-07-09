import 'package:apointment/constants/colors.dart';
import 'package:apointment/widgets/column_text.dart';
import 'package:apointment/widgets/rectangle_image.dart';
import 'package:apointment/widgets/small_text.dart';
import 'package:flutter/material.dart';

class TrainerProfileRating extends StatelessWidget {
  final String image;
  final String textOne;
  final String textTwo;
  final int rating;

  const TrainerProfileRating({
    Key? key,
    required this.image,
    required this.textOne,
    required this.textTwo,
    required this.rating,
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
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: List.generate(5, (index) {
                        return Icon(
                          index < rating ? Icons.star : Icons.star_outline,
                          color: index < rating
                              ? Colors.yellow
                              : AppColors.textColor,
                          size: 18,
                        );
                      }),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
