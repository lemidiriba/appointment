import 'package:flutter/material.dart';

class RectangleImage extends StatelessWidget {
  final String image;
  final bool border;
  final double width;
  final double height;
  const RectangleImage({Key? key,required this.image,this.border = true, this.width =90,this.height= 90}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: const EdgeInsets.all(4),
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: border == true ? Border.all(color: Colors.white, width: 4) :Border.all(width: 0) ,
                color: Colors.white,
                image:DecorationImage(
                  image: AssetImage(image,),
                  fit: BoxFit.cover,
                ),
              ),
            );
  }
}