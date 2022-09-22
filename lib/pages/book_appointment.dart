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

class BookAppointment extends StatefulWidget {
  BookAppointment({Key? key}) : super(key: key);

  @override
  State<BookAppointment> createState() => _ProfilePageOneState();
}

class _ProfilePageOneState extends State<BookAppointment> {
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
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      color: AppColors.textColor.withOpacity(0.8),
                    ),
                  ),
                  const SmallText(
                    text: "Book an Appointment",
                    size: 14,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.map,
                      color: AppColors.textColor.withOpacity(0.8),
                    ),
                  )
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const RectangleImage(
                        image: 'assets/team-2.jpg',
                      ),
                      SizedBox(
                        width: Dimension.width10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          BigText(
                            text: "Piff Jenkins",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ColumnText(
                              textOne: "Ethiopia",
                              textTwo: "Jimma Main Campus"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    height: 15,
                    color: AppColors.bgColor,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: Dimension.height20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SmallText(text: "Appointment For"),
                        SizedBox(
                          height: Dimension.height10,
                        ),
                        TextFormField(
                          cursorColor: AppColors.textColorDark,
                          style: TextStyle(
                            color: AppColors.textColorDark,
                          ),
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: AppColors.bgColor,
                            hintText: "Name, Sure Name",
                            hintStyle: TextStyle(
                              color: AppColors.textColorDark,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColors.bgColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Dimension.height10,
                        ),
                        TextFormField(
                          cursorColor: AppColors.textColorDark,
                          style: TextStyle(
                            color: AppColors.textColorDark,
                          ),
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: AppColors.bgColor,
                            hintText: "Contact Number",
                            hintStyle: TextStyle(
                              color: AppColors.textColorDark,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColors.bgColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Dimension.height10,
                        ),
                        BigText(
                          text: "Who Comes with you?",
                          size: 14,
                        ),
                        SizedBox(
                          height: Dimension.height10,
                        ),
                        Container(
                          height: Dimension.height220 ,
                          // color: AppColors.textColorDark,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                  color: AppColors.bgColor,
                                  borderRadius: BorderRadius.circular(Dimension.height10)
                                  ),
                                  margin: EdgeInsets.only(bottom: Dimension.height10, top: Dimension.height10,left: Dimension.height10,right:  Dimension.height10),
                                  width:145,
                                  child: Text('$index'),
                                );
                              }),
                        ),
                        SizedBox(
                          height: Dimension.height10,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: LargButton(text: "Next"))
                      ],
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
