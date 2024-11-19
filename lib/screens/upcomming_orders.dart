import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/reuseable_components/custom_backButton.dart';
import 'package:food_hub/reuseable_components/slide_button.dart';
import 'package:food_hub/utils/constant_colors.dart';
class UpcommingOrders extends StatefulWidget {
  const UpcommingOrders({super.key});

  @override
  State<UpcommingOrders> createState() => _UpcommingOrdersState();
}

class _UpcommingOrdersState extends State<UpcommingOrders> {
  bool isSelected = false;
  void toggleButtons(){
    setState(() {
      isSelected = !isSelected;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Container(
        margin: EdgeInsets.only(left: 20.sp,right: 20.sp,top: 15.sp),
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBackbutton(),
                Customtextwidget(text: 'My Orders',fontSize: 18.sp,fontWeight: FontWeight.w600,color: AppColors.headingText,),
                Container(
                  height: 40.h,
                  width: 40.w,
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.asset(
                    'assets/images/profileImage.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.sp,),
            SlideButton(
              isSelected: isSelected,
              onTap: toggleButtons,
            ),
          ],
        ),
      ),
    );
  }
}

