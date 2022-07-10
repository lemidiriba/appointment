import 'dart:convert';

import 'package:apointment/constants/colors.dart';
import 'package:apointment/utility/dimention.dart';
import 'package:apointment/widgets/article_item.dart';
import 'package:apointment/widgets/big_text.dart';
import 'package:apointment/widgets/circulat_image.dart';
import 'package:apointment/widgets/column_text.dart';
import 'package:apointment/widgets/custom_bottom_navigation_bar.dart';
import 'package:apointment/widgets/included_program.dart';
import 'package:apointment/widgets/larg_button.dart';
import 'package:apointment/widgets/rectangle_image.dart';
import 'package:apointment/widgets/small_text.dart';
import 'package:apointment/widgets/trainer_profile_rating.dart';
import 'package:flutter/material.dart';

class TrainerProfilePageLocation extends StatefulWidget {
  TrainerProfilePageLocation({Key? key}) : super(key: key);

  @override
  State<TrainerProfilePageLocation> createState() => _ProfilePageOneState();
}

class _ProfilePageOneState extends State<TrainerProfilePageLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Stack(
        children: [
          Positioned(
            top: Dimension.height40,
            left: 0,
            right: 0,
            child: Container(
              width: Dimension.height100,
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: AppColors.textColor.withOpacity(0.8),
                  ),
                  const SmallText(
                    text: "Trainer Profile",
                    size: 14,
                  ),
                  Icon(
                    Icons.map,
                    color: AppColors.textColor.withOpacity(0.8),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: Dimension.height80,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(right: 16, left: 16, top: 20),
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(
                        Icons.share,
                        color: Color.fromARGB(255, 182, 182, 182),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.favorite_outline,
                        color: Color.fromARGB(255, 182, 182, 182),
                      ),
                    ],
                  ),
                  CircularImage(),
                  SizedBox(
                    height: Dimension.height10,
                  ),
                  const SmallText(
                    text: "Fig Nelson",
                    boldFont: true,
                    size: 18,
                    color: Colors.white,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 2),
                    child: const ColumnText(
                      textOne: "Banglador Murson Sport",
                      textTwo: "Fit Sport Stop",
                      alighnStart: false,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) {
                      return Icon(
                        index < 4 ? Icons.star : Icons.star_outline,
                        color: index < 4 ? Colors.yellow : AppColors.textColor,
                        size: 18,
                      );
                    }),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: Dimension.height10, bottom: Dimension.height10),
                    child: LargButton(text: "Book an Appointment"),
                  ),
                ],
              ),
            ),
          ),
          CustomBottomNavigationBar()
        ],
      ),
    );
  }
}
