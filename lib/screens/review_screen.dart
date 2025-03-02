import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/reuseable_components/custom_backButton.dart';
import 'package:food_hub/reuseable_components/textfield_component.dart';
import 'package:food_hub/utils/app-assets.dart';
import 'package:food_hub/utils/constant_colors.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBackbutton(),
                Spacer(),
                Customtextwidget(
                  text: 'Reviews',
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: AppColors.headingText,
                ),
                Spacer(),
              ],
            ),
            SizedBox(
              height: 15.sp,
            ),
            TextFormField(
              decoration: InputDecoration(
                // contentPadding: EdgeInsets.only(right: 15),
                hintText: 'Write Your Review...',
                hintStyle: TextStyle(color: AppColors.blackColor),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: AppColors.enabledBorder),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.buttonColor)),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 6.0.sp, right: 20.sp),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(AppAssets.pizzaHut),
                    // child: Image.asset(AppAssets.cheezious,),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(AppAssets.pizzaHut),
                            ),
                            Positioned(
                                top: 28,
                                left: 32.5,
                                child: Container(
                                  width: 25.w,
                                  height: 20.h,
                                  decoration: BoxDecoration(
                                      color: AppColors.ratingStarColor,
shape:BoxShape.circle
                                      // borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Center(
                                      child: Customtextwidget(
                                    text: '3.5',
                                    color: AppColors.whiteColor,
                                  )),
                                ))
                          ],
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Customtextwidget(
                              text: 'Jazzy Boy',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            Customtextwidget(
                              text: '25/12/24',
                              fontSize: 14.sp,
                              color: AppColors.titleColorOfTextFormField,
                            )
                          ],
                        ),
                        const Spacer(),
                        Icon(
                          Icons.more_vert,
                          color: AppColors.searchIconColor,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.sp,
                    ),
                    Customtextwidget(
                      text:
                          'Really convenient and the points system helps benefit loyalty. Some mild glitches here and there, but nothing too egregious. Obviously needs to roll out to more remote.',
                      fontSize: 15.sp,
                      color: AppColors.searchHintText,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
