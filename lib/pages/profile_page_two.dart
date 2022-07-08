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
import 'package:apointment/widgets/traning_program%20.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePageTwo extends StatefulWidget {
  ProfilePageTwo({Key? key}) : super(key: key);

  @override
  State<ProfilePageTwo> createState() => _ProfilePageOneState();
}

class _ProfilePageOneState extends State<ProfilePageTwo> {
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
                    text: "Profile",
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
                        image: 'assets/team-1.jpg',
                      ),
                      SizedBox(
                        width: Dimension.height70,
                      ),
                      Column(
                        children: const [
                          BigText(text: "Lemi Diriba"),
                          SizedBox(
                            height: 10,
                          ),
                          SmallText(text: "#lee_drib")
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    child: const LargButton(text: "Edit Profile"),
                    onTap: () {
                      print(Get.size.height);
                    },
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(
                    height: 10,
                    color: AppColors.bgColor,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20 ),
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
                        
                      ],
                    ),
                  ),
                  Expanded(
                      child: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(
                      4,
                      (index) {
                        return TraningProgram(image: "assets/team-${index +1 }.jpg",textOne: "Gustra Purplson",textTwo: "Arobic Workout",);
                      },
                    ),
                  ))
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
