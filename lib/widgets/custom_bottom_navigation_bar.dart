import 'package:apointment/constants/colors.dart';
import 'package:apointment/utility/dimention.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int pageIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 15,
      left: 0,
      right: 0,
      child: Container(
        height: Dimension.height60,
        margin: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              child: Icon(
                Icons.home_outlined,
                color: pageIndex == 1 ? AppColors.secondaryColor:Colors.grey,
                size: Dimension.height25,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              child: Icon(
                Icons.calendar_month_outlined,
                color: pageIndex == 2 ? AppColors.secondaryColor:Colors.grey,
                size: Dimension.height25,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              child: Icon(
                Icons.search_outlined,
                color: pageIndex == 3 ? AppColors.secondaryColor:Colors.grey,
                size: Dimension.height25,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex = 4;
                });
              },
              child: Icon(
                Icons.person_pin_outlined,
                color: pageIndex == 4 ? AppColors.secondaryColor:Colors.grey,
                size: Dimension.height25,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex = 5;
                });
              },
              child: Icon(
                Icons.person_outline,
                color:pageIndex == 5 ? AppColors.secondaryColor:Colors.grey,
                size: Dimension.height25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
