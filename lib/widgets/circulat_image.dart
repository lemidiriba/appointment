import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: const EdgeInsets.all(4),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.white, width: 4) ,
                color: Colors.white,
                image:const DecorationImage(
                  image: AssetImage('assets/team-2.jpg',),
                  fit: BoxFit.cover,
                ),
              ),
            );
  }
}