import 'package:apointment/constants/colors.dart';
import 'package:apointment/utility/dimention.dart';
import 'package:apointment/widgets/big_text.dart';
import 'package:apointment/widgets/circular_icon.dart';
import 'package:apointment/widgets/circulat_image.dart';
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
            CircularImage(),
            SizedBox(
              height: Dimension.height30,
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
                  CirculatIcon(icon: Icons.volume_down_outlined),
                  CirculatIcon(icon: Icons.pause_outlined),
                  CirculatIcon(icon: Icons.mic_none_outlined),
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
