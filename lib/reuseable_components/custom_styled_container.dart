import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/utils/constant_colors.dart';

class CustomStyledContainer extends StatelessWidget {
  const CustomStyledContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Positioned(
                child: Container(
              height: 85.w,
              width: 50.w,
              decoration: BoxDecoration(
                  color: AppColors.buttonColor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(2))),
            )),
            Positioned(
                top: 20,
                child: Container(
                  height: 40.h,
                  width: 35.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(100))),
                )),
            Positioned(child: Container(
              height: 60.h,
              width: 140.w,
              decoration: BoxDecoration(
                color: AppColors.customStyleContColor,
borderRadius: BorderRadius.only(
  bottomLeft: Radius.circular(100),
  bottomRight: Radius.circular(100)
)
              ),
            ))
          ],
        ),
        Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            color: AppColors.buttonColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100)
            )
          ),
        )
      ],
    );
  }
}
