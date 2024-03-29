import 'dart:convert';

import 'package:apointment/constants/colors.dart';
import 'package:apointment/utility/dimention.dart';
import 'package:apointment/widgets/big_text.dart';
import 'package:apointment/widgets/column_text.dart';
import 'package:apointment/widgets/custom_bottom_navigation_bar.dart';
import 'package:apointment/widgets/included_program.dart';
import 'package:apointment/widgets/larg_button.dart';
import 'package:apointment/widgets/rectangle_image.dart';
import 'package:apointment/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ProfilePageOne extends StatefulWidget {
  ProfilePageOne({Key? key}) : super(key: key);

  @override
  State<ProfilePageOne> createState() => _ProfilePageOneState();
}

class _ProfilePageOneState extends State<ProfilePageOne> {
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
                    Icons.menu,
                    color: AppColors.textColor.withOpacity(0.8),
                  ),
                  const SmallText(
                    text: "Profile One",
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
                    children: [
                      const RectangleImage(
                        image: 'assets/team-2.jpg',
                      ),
                      SizedBox(
                        width: Dimension.height70,
                      ),
                      Column(
                        children: const [
                          BigText(text: "Piff Jenkins"),
                          SizedBox(
                            height: 10,
                          ),
                          SmallText(text: "#Jpiff_enkins")
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    child: const LargButton(text: "Edit Profile"),
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(
                    height: 10,
                    color: AppColors.bgColor,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    height: Dimension.height55,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 30, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              ColumnText(
                                textOne: "My Progarms",
                                textTwo: "27",
                                alighnStart: false,
                              ),
                              ColumnText(
                                textOne: "My Trainers",
                                textTwo: "27",
                                alighnStart: false,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                        child: Column(
                      children: List.generate(4, (index) {
                        return IncludedProgram(image: 'assets/team-${index +1}.jpg',textOne: "Piff Jack", textTwo: "#piff_jack", smallText: "931 Oclohama Ny - 150m away",);
                      }),
                    )),
                  )
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
