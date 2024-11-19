
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/reuseable_components/custom_backButton.dart';
import 'package:food_hub/reuseable_components/custom_button.dart';
import 'package:food_hub/utils/constant_colors.dart';
class SlideButton extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;
  const SlideButton({
    Key ? key,
    this.isSelected= false,
required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: onTap,
      child: Container(
        height: 55.h,
        width: double.infinity,
        decoration: BoxDecoration(
      border: Border.all(color: AppColors.enabledBorder),
          borderRadius: BorderRadius.circular(40.sp)

        ),
        child: Padding(
          padding:  EdgeInsets.only(left: 3.sp,top: 3.sp,bottom: 3.sp,right: 3.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: 156.w,
                  child: CustomButton(buttonText: 'Upcoming',
                    backGroundColor:  isSelected ? AppColors.buttonColor : AppColors.whiteColor,
                    textColor: isSelected ? AppColors.whiteColor : AppColors.buttonColor,

                  )),
              // Spacer(),
              Container(
                  width: 156.w,
                  child: CustomButton(buttonText: 'History',
                    backGroundColor:  isSelected ? AppColors.buttonColor : AppColors.whiteColor,
                    textColor: isSelected ? AppColors.whiteColor : AppColors.buttonColor,

                  )),
            ],
          ),
        ),
      ),
    );
  }
}
