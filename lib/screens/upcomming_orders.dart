import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/reuseable_components/custom_backButton.dart';
import 'package:food_hub/reuseable_components/custom_button.dart';
import 'package:food_hub/reuseable_components/delivered_orders.dart';
import 'package:food_hub/reuseable_components/slide_button.dart';
import 'package:food_hub/utils/constant_colors.dart';

class UpcommingOrders extends StatefulWidget {
  const UpcommingOrders({super.key});

  @override
  State<UpcommingOrders> createState() => _UpcommingOrdersState();
}

class _UpcommingOrdersState extends State<UpcommingOrders> {
  bool isSelected = false;
  void toggleButtons() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBackbutton(),
                Customtextwidget(
                  text: 'My Orders',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.headingText,
                ),
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
            SizedBox(
              height: 15.sp,
            ),
            SlideButton(
              isSelected: isSelected,
              onTap: toggleButtons,
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 238.h,
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
                              'assets/images/star-buck.png',
                            )),
                        SizedBox(
                          width: 10.w,
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 15.h,
                            ),
                            Customtextwidget(
                              text: '5 items',
                              fontSize: 12.sp,
                              color: AppColors.titleColorOfTextFormField,
                            ),
                            Row(
                              children: [
                                Customtextwidget(
                                  text: 'Starbuck',
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
                            )
                          ],
                        ),
                        Spacer(),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Customtextwidget(
                        text: 'Estimate arrival',
                        fontSize: 12.sp,
                        color: AppColors.titleColorOfTextFormField,
                      ),
                      Customtextwidget(
                        text: 'Now',
                        fontSize: 12.sp,
                        color: AppColors.titleColorOfTextFormField,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150.w,
                        child: Stack(children: [
                          Customtextwidget(
                            text: '0020',
                            fontSize: 38.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.blackColor,
                          ),
                          // SizedBox(width: 10.w,),
                          Positioned(
                              // bottom: 1.sp,
                            top: 21.sp,
                              left: 90.sp,
                              child: Customtextwidget(
                                text: 'min',
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.blackColor,
                              ))
                        ]),
                      ),
                      Customtextwidget(
                        text: 'Food on the way',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.blackColor,
                      ),
                    ],
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
            ),
            SizedBox(height: 15.h,),
            Customtextwidget(text: 'Lasted Orders',fontWeight: FontWeight.w600,fontSize: 18.sp,color: AppColors.headingText,),
          SizedBox(height: 15.h,),
            DeliveredOrders(),
          ],
        ),
      ),
    );
  }
}
