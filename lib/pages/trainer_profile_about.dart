import 'package:apointment/constants/colors.dart';
import 'package:apointment/utility/dimention.dart';
import 'package:apointment/widgets/article_item.dart';
import 'package:apointment/widgets/column_text.dart';
import 'package:apointment/widgets/custom_bottom_navigation_bar.dart';
import 'package:apointment/widgets/larg_button.dart';
import 'package:apointment/widgets/small_text.dart';
import 'package:apointment/widgets/trainer_profile_rating.dart';
import 'package:flutter/material.dart';

class TrainerProfilePageAbout extends StatefulWidget {
  TrainerProfilePageAbout({Key? key}) : super(key: key);

  @override
  State<TrainerProfilePageAbout> createState() => _ProfilePageOneState();
}

class _ProfilePageOneState extends State<TrainerProfilePageAbout> {
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TrainerProfileRating(
                    image: 'assets/team-1.jpg',
                    textOne: "Piff Jack",
                    textTwo: "#piff_jack",
                    rating: 4,
                  ),
                  LargButton(text: "Book An Appointment"),
                  SizedBox(
                    height: Dimension.height10,
                  ),
                  Divider(
                    height: Dimension.height10,
                    color: AppColors.bgColor,
                  ),
                  SizedBox(
                    height: Dimension.height10,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                            margin: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SmallText(
                                  text: "About",
                                  size: 14,
                                  boldFont: true,
                                ),
                                SizedBox(
                                  height: Dimension.height10,
                                ),
                                const SmallText(
                                  text:
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                ),
                                SizedBox(
                                  height: Dimension.height20,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 50, ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.pin_drop_outlined,
                                            color: AppColors.textColor,
                                            size: 20,
                                          ),
                                          SmallText(
                                              text:
                                                  " Ethiopia, Adiss-Abeba(ETH) 30265 Bole")
                                        ],
                                      ),
                                      SizedBox( height:Dimension.height10),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.phone_outlined,
                                            color: AppColors.textColor,
                                            size: 20,
                                          ),
                                          SmallText(text: " +25109 1111 3099")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                SmallText(
                                  text: "Articles",
                                  size: 14,
                                  boldFont: true,
                                ),
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
