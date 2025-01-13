import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/reuseable_components/custom_backButton.dart';
import 'package:food_hub/reuseable_components/custom_button.dart';
import 'package:food_hub/reuseable_components/rating_stars.dart';
import 'package:food_hub/utils/app-assets.dart';
import 'package:food_hub/utils/constant_colors.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200.h,
              child: Stack(
                children: [
                  // bg Image Container
                  Container(
                    height: 146.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AppAssets.cheezious)),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  // Circular bg Container of Image
                  Positioned(
                      top: 110.sp,
                      left: 115.sp,
                      child: Container(
                        height: 100.h,
                        width: 100.w,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.whiteColor,
                        ),
                        child: Center(
                          // bgImage Container
                          child: Container(
                            // padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                            decoration: const BoxDecoration(
                                color: AppColors.ratingStarColor,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          AppColors.titleColorOfTextFormField,
                                      blurRadius: 10,
                                      spreadRadius: 3,
                                      offset: Offset(0, 6))
                                ],
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage(
                                    AppAssets.pizzaHut,
                                  ),
                                )),
                            // child: Image.asset('assets/images/cheezious.png',),
                          ),
                        ),
                      )),
                  Positioned(
                    top: 181.sp,
                    left: 200.sp,
                    child: Container(
                      height: 25.sp,
                      width: 24.sp,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: AppColors.whiteColor, shape: BoxShape.circle),
                      child: Container(
                          height: 20.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: AppColors.verifiedContainerColor,
                            shape: BoxShape.circle,

                            // borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.check,
                            color: AppColors.whiteColor,
                            size: 11,
                          )),
                    ),
                  ),

                  Positioned(
                      top: 30.sp, left: 20.sp, child: const CustomBackbutton()),
                ],
              ),
            ),
            Customtextwidget(
              text: 'Pizza Hut',
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.blackColor,
            ),
            SizedBox(height: 4.sp,),
            Customtextwidget(
              text: '45740 Sohan Near Highway',
              fontSize: 13.sp,
              color: AppColors.titleColorOfTextFormField,
            ),
            SizedBox(height: 10.sp,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 7.h,
                  width: 7.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.greenContainer),
                ),
                SizedBox(
                  width: 5.sp,
                ),
                Customtextwidget(
                  text: 'Pizza Hut',
                  fontSize: 14.sp,
                  color: AppColors.greenContainer,
                ),
              ],
            ),
            SizedBox(height: 12.sp,),

            Customtextwidget(
              text: 'Rate the Services',
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.blackColor,
            ),
            SizedBox(height: 15.h
              ,),
            Expanded(

                child: RatingStars()),
// SizedBox(height: 1.sp,),
TextFormField(
  maxLines: 8,

  decoration: InputDecoration(

    hintTextDirection: TextDirection.ltr,
    hintText: 'Write reviews...',
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.titleColorOfTextFormField)
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.titleColorOfTextFormField
      )
    )
  ),
),
            SizedBox(height: 50.sp,),
            CustomButton(buttonText: 'Submit',textColor: AppColors.whiteColor,)
          ],
        ),
      ),
    );
  }
}
