import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/utils/constant_colors.dart';

class TabButtons extends StatelessWidget {
  final String imagePath;
  final String imageTitle;
  final bool isSelected;
  final VoidCallback onTap;

  const TabButtons({
    Key? key,
    required this.imagePath,
    required this.imageTitle,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          height: 98.h,
          width: 58.w,
          decoration: BoxDecoration(
              color: isSelected ? AppColors.buttonColor : AppColors.whiteColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                    color:isSelected? AppColors.buttonColor.withOpacity(0.5) : AppColors.whiteColor,
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 6)
                )
              ]),
          child: Column(
            children: [
              SizedBox(
                height: 3.h,
              ),
              Center(
                child: Image.asset(
                  imagePath,
                  height: 49.h,
                  width: 49.w,
                  // fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                imageTitle,
                style: TextStyle(
                    color: isSelected
                        ? AppColors.whiteColor
                        : AppColors.blackColor),
              )
            ],
          ),
        ));
  }
}
