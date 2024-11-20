import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/reuseable_components/custom_button.dart';
import 'package:food_hub/utils/constant_colors.dart';

class DeliveredOrders extends StatefulWidget {
  const DeliveredOrders({super.key});

  @override
  State<DeliveredOrders> createState() => _DeliveredOrdersState();
}

class _DeliveredOrdersState extends State<DeliveredOrders> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 180.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(20.sp),
// color: AppColors.whiteColor.withOpacity(0.8),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 5.sp,
                blurRadius: 10.sp,
                offset: Offset(5, 5))
          ]),
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
            width: 100.w,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(width: 10.w,),
                Container(
                  // margin: EdgeInsets.symmetric(5),
                  // padding: EdgeInsets.all(10),
                    height: 65.h,
                    width: 65.w,
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.15),
                              spreadRadius: 10,
                              blurRadius: 10,
                              offset: Offset(5, 5))
                        ]),
                    child: Image.asset(
                      'assets/images/jimmy-jons.png',
                    )),
                SizedBox(
                  width: 10.w,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Customtextwidget(
                      text: '10 feb, 10:30',
                      fontSize: 12.sp,
                      color: AppColors.titleColorOfTextFormField,
                    ),
                    Row(
                      children: [
                        Customtextwidget(
                          text: 'Jimmy Jons',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackColor,
                        ),
                        SizedBox(
                          width: 5.sp,
                        ),
                        Container(
                            height: 13.h,
                            width: 15.w,
                            decoration: BoxDecoration(
                              color: AppColors.verifiedContainerColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.check,
                              color: AppColors.whiteColor,
                              size: 11,
                            )),
                      ],
                    ),

                    Row(
                      children: [
                        Container(
                          height: 7.h,
                          width: 8.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppColors.orderedTextC,

                          ),
                        ),
                        SizedBox(width: 5.w,),
                        Customtextwidget(text: 'Order Delivered',fontSize: 14.sp,color: AppColors.orderedTextC,),
                      ],
                    ),

                  ],
                ),
Container(
  height: 5.h,
  width: 6.w,
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(100),
  color: AppColors.titleColorOfTextFormField,

),
),
Customtextwidget(text: '3 items',fontSize: 14.sp,color: AppColors.titleColorOfTextFormField,),
                // Spacer(),
                Customtextwidget(
                  text: '#232435',
                  fontSize: 16.sp,
                  color: AppColors.buttonColor,
                )
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),

          SizedBox(height: 15.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height:43.h,
                  width: 135.w,

                  child: CustomButton(buttonText: 'Cancel',backGroundColor: AppColors.whiteColor,textColor: AppColors.blackColor,)),
              Container(
                  height:43.h,
                  width: 135.w,

                  child: CustomButton(buttonText: 'Track Order',backGroundColor: AppColors.buttonColor,textColor: AppColors.whiteColor,)),
            ],
          )
        ],
      ),
    );
  }
}
