import 'dart:convert';

import 'package:apointment/constants/colors.dart';
import 'package:apointment/utility/dimention.dart';
import 'package:apointment/widgets/article_item.dart';
import 'package:apointment/widgets/big_text.dart';
import 'package:apointment/widgets/column_text.dart';
import 'package:apointment/widgets/custom_bottom_navigation_bar.dart';
import 'package:apointment/widgets/included_program.dart';
import 'package:apointment/widgets/larg_button.dart';
import 'package:apointment/widgets/rectangle_image.dart';
import 'package:apointment/widgets/small_text.dart';
import 'package:flutter/material.dart';

class TrainerProfilePageOne extends StatefulWidget {
  TrainerProfilePageOne({Key? key}) : super(key: key);

  @override
  State<TrainerProfilePageOne> createState() => _ProfilePageOneState();
}

class _ProfilePageOneState extends State<TrainerProfilePageOne> {
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
                  IncludedProgram(
                    image: 'assets/team-1.jpg',
                    textOne: "Piff Jack",
                    textTwo: "#piff_jack",
                    smallText: "931 Oclohama Ny - 150m away",
                    showMore: false,
                  ),
                  const SmallText(
                    text:
                        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.",
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    height: Dimension.height55,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              LargButton(text: "Book An Appointment"),
                              Icon(
                                Icons.call,
                                color: AppColors.secondaryColor,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 10,
                    color: AppColors.bgColor,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              ColumnText(textOne: "Linkes", textTwo: "3222"),
                              ColumnText(textOne: "Comments", textTwo: "2732"),
                              ColumnText(
                                  textOne: "Background", textTwo: "1101"),
                            ],
                          ),
                          SizedBox(
                            height: Dimension.height10,
                          ),
                          const Divider(
                            height: 10,
                            color: AppColors.bgColor,
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                SmallText(text: "Articles"),
                                SmallText(
                                  text: "show all",
                                  color: AppColors.secondaryColor,
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: List.generate(4, (index) {
                              return ArticleItem(
                                image: "assets/team-${index + 1}.jpg",
                                text:
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
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
