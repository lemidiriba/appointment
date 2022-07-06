import 'package:flutter/material.dart';

class RectangleImage extends StatelessWidget {
  final String image;
  const RectangleImage({Key? key,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: const EdgeInsets.all(4),
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white, width: 4) ,
                color: Colors.white,
                image:DecorationImage(
                  image: AssetImage(image,),
                  fit: BoxFit.cover,
                ),
              ),
            );
  }
}