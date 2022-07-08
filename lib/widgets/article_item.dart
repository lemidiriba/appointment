import 'package:apointment/constants/colors.dart';
import 'package:apointment/utility/dimention.dart';
import 'package:apointment/widgets/rectangle_image.dart';
import 'package:apointment/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ArticleItem extends StatelessWidget {
  final String image;
  final String text;
  const ArticleItem({Key? key, required this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RectangleImage(
                image: image,
                width: Dimension.height70,
                height: Dimension.height70,
                border: false,
              ),
              SizedBox(
                width: Dimension.width10,
              ),
              Expanded(
                child: SmallText(
                  text: text,
                ),
              ),
            ],
          ),
           SizedBox(height: Dimension.height10,),
          const Divider(
            height: 10,
            color: AppColors.bgColor,
          ),
        ],
      ),
    );
  }
}
