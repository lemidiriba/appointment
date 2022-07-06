import 'package:apointment/constants/colors.dart';
import 'package:apointment/widgets/big_text.dart';
import 'package:apointment/widgets/circular_icon.dart';
import 'package:apointment/widgets/small_text.dart';
import 'package:flutter/material.dart';

class PhoneCallPage extends StatelessWidget {
  const PhoneCallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Container(
        margin: const EdgeInsets.only(top: 100),
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
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
            ),
            const SizedBox(
              height: 30,
            ),
            const BigText(text: "Dr. Wisteri Revenciaw"),
            const SizedBox(
              height: 10,
            ),
            const SmallText(
              text: "Calling...",
              color: AppColors.secondaryColor,
            ),
            const SizedBox(
              height: 150,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CirculatIcon(icon: Icons.music_note_outlined),
                  CirculatIcon(icon: Icons.play_arrow_outlined),
                  CirculatIcon(icon: Icons.stop_circle_outlined),
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            CirculatIcon(
              icon: Icons.call,
              iconBackgrounColor: AppColors.secondaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
