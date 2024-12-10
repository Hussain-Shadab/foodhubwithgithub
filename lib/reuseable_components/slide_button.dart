
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/reuseable_components/custom_backButton.dart';
import 'package:food_hub/reuseable_components/custom_button.dart';
import 'package:food_hub/utils/constant_colors.dart';
class SlideButton extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;
  final int selectedIndex;
  final String text;
  const SlideButton({
    Key ? key,
    this.isSelected= false,
required this.onTap,
    this.text='text',
    this.selectedIndex = 0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      width: double.infinity,
      decoration: BoxDecoration(
    border: Border.all(color: AppColors.enabledBorder),
        borderRadius: BorderRadius.circular(40.sp)

      ),
      child: Padding(
        padding:  EdgeInsets.all(3.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: onTap,
              child: Container(
                  width: 156.w,
                  child: CustomButton(buttonText: text,
                    backGroundColor:  isSelected ? AppColors.buttonColor : AppColors.whiteColor,
                    textColor: isSelected ? AppColors.whiteColor : AppColors.buttonColor,

                  )),
            ),

            GestureDetector(
              onTap: onTap,
              child: Container(
                  width: 156.w,

                  child: CustomButton(buttonText: text,
                    backGroundColor:  isSelected ? AppColors.whiteColor : AppColors.buttonColor,
                    textColor: isSelected ? AppColors.buttonColor : AppColors.whiteColor,

                  )),
            ),
          ],
        ),
      ),
    );
  }
}
