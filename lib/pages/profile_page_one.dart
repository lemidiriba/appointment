import 'dart:convert';

import 'package:apointment/constants/colors.dart';
import 'package:apointment/widgets/big_text.dart';
import 'package:apointment/widgets/column_text.dart';
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
            top: 40,
            left: 0,
            right: 0,
            child: Container(
              width: 100,
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
            top: 80,
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
                      const RectangleImage(image: 'assets/team-2.jpg'),
                      const SizedBox(
                        width: 70,
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
                  const LargButton(text: "Edit Profile"),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(
                    height: 10,
                    color: AppColors.bgColor,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20, bottom: 10),
                            height: 55,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 30, right: 30),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                          Column(
                                  children: List.generate(4, (index) {
                                    return IncludedProgram();
                                  }),
                                )
                         
                          
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            left: 0,
            right: 0,
            child: Container(
              height: 60,
              margin: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                    size: 25,
                  ),
                  Icon(
                    Icons.calendar_month_outlined,
                    color: Colors.grey,
                    size: 25,
                  ),
                  Icon(
                    Icons.search_outlined,
                    color: Colors.grey,
                    size: 25,
                  ),
                  Icon(
                    Icons.person_pin_outlined,
                    color: Colors.grey,
                    size: 25,
                  ),
                  Icon(
                    Icons.person_outline,
                    color: AppColors.secondaryColor,
                    size: 25,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
