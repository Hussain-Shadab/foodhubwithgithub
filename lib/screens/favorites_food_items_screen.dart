
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/reuseable_components/custom_backButton.dart';
import 'package:food_hub/reuseable_components/featured_resturant_item.dart';
import 'package:food_hub/reuseable_components/slide_button.dart';
import 'package:food_hub/utils/constant_colors.dart';

class FavoritesFoodItemsScreen extends StatefulWidget {
  const FavoritesFoodItemsScreen({super.key});

  @override
  State<FavoritesFoodItemsScreen> createState() => _FavoritesFoodItemsScreenState();
}

class _FavoritesFoodItemsScreenState extends State<FavoritesFoodItemsScreen> {
  bool isSelected = false;
  void toggleButtons(){
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      margin: EdgeInsets.all(20.sp),
        child: SingleChildScrollView(
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
                text: 'Food Items',
                isSelected: isSelected,
                onTap: toggleButtons,
              ),
              SizedBox(
                height: 15.h,
              ),
              Stack(
                children: [
                  Container(
                    height: 250.h,
                    width: 323.w,
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
          
                        FeaturedResturantItem(backGroundImage: 'assets/images/cateImg.png',height: 165.h,width: 323.w,
                          text: '555',
                        ),
                        SizedBox(height: 12.sp,),
                        Customtextwidget(text: 'Chicken Hawaiian',fontSize: 18.sp,fontWeight: FontWeight.bold,color: AppColors.blackColor,),
                        SizedBox(height: 6.sp,),
                        Customtextwidget(text: 'Chicken, Cheese and pineapple',fontSize: 14.sp,color: AppColors.titleColorOfTextFormField,),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 180,
                    // left: 1,
                    child: Container(
                      height: 28.h,
                      width: 69.w,
                      margin: EdgeInsets.only(top: 16.sp,left: 10.sp),
                      decoration: BoxDecoration(
          
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(24)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Customtextwidget(text: '4.5',
                            fontWeight: FontWeight.bold,
                            fontSize: 11.sp,
                          ),
                          // SizedBox(width: 3.sp,),
                          Icon(Icons.star,color: AppColors.ratingStarColor,),
                          Customtextwidget(text: '(25+)',
                            fontSize: 8.sp,
                            color: AppColors.titleColorOfTextFormField,
                          ),
          
                        ],
                      ),
                    ),)
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 250.h,
                    width: 323.w,
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
          
                        FeaturedResturantItem(backGroundImage: 'assets/images/cateImg.png',height: 165.h,width: 323.w,
                          text: '555',
                        ),
                        SizedBox(height: 12.sp,),
                        Customtextwidget(text: 'Red and Hot Pizza',fontSize: 18.sp,fontWeight: FontWeight.bold,color: AppColors.blackColor,),
                        SizedBox(height: 6.sp,),
                        Customtextwidget(text: 'Chicken Chilly',fontSize: 14.sp,color: AppColors.titleColorOfTextFormField,),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 180,
                    // left: 1,
                    child: Container(
                      height: 28.h,
                      width: 69.w,
                      margin: EdgeInsets.only(top: 16.sp,left: 10.sp),
                      decoration: BoxDecoration(
          
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(24)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Customtextwidget(text: '4.5',
                            fontWeight: FontWeight.bold,
                            fontSize: 11.sp,
                          ),
                          // SizedBox(width: 3.sp,),
                          Icon(Icons.star,color: AppColors.ratingStarColor,),
                          Customtextwidget(text: '(25+)',
                            fontSize: 8.sp,
                            color: AppColors.titleColorOfTextFormField,
                          ),
          
                        ],
                      ),
                    ),)
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 250.h,
                    width: 323.w,
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
          
                        FeaturedResturantItem(backGroundImage: 'assets/images/cateImg.png',height: 165.h,width: 323.w,
                          text: '555',
                        ),
                        SizedBox(height: 12.sp,),
                        Customtextwidget(text: 'Chicken Desi',fontSize: 18.sp,fontWeight: FontWeight.bold,color: AppColors.blackColor,),
                        SizedBox(height: 6.sp,),
                        Customtextwidget(text: 'Chicken, Cheese',fontSize: 14.sp,color: AppColors.titleColorOfTextFormField,),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 180,
                    // left: 1,
                    child: Container(
                      height: 28.h,
                      width: 69.w,
                      margin: EdgeInsets.only(top: 16.sp,left: 10.sp),
                      decoration: BoxDecoration(
          
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(24)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Customtextwidget(text: '4.5',
                            fontWeight: FontWeight.bold,
                            fontSize: 11.sp,
                          ),
                          // SizedBox(width: 3.sp,),
                          Icon(Icons.star,color: AppColors.ratingStarColor,),
                          Customtextwidget(text: '(25+)',
                            fontSize: 8.sp,
                            color: AppColors.titleColorOfTextFormField,
                          ),
          
                        ],
                      ),
                    ),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
