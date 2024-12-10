import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/custom_backButton.dart';
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
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(

              height: 200.h,
              child: Stack(
                children: [
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
                  Positioned(
                      top: 110.sp,
                      left: 125.sp,
                      child: Container(
                        height: 100.h,
                        width: 100.w,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.whiteColor,

                        ),
                        child: Center(
                          child: Container(
                            // padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: const BoxDecoration(
                                color: AppColors.ratingStarColor,
                                shape: BoxShape.circle,
                              image: DecorationImage(
                                // fit: BoxFit.cover,

                                image: AssetImage(

                                  AppAssets.pizzaHut,),)
                            ),
                            // child: Image.asset('assets/images/cheezious.png',),

                          ),
                        ),
                      )),
                  Positioned(top: 30.sp, left: 20.sp, child: const CustomBackbutton()),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
