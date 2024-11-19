import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/reuseable_components/custom_backButton.dart';
import 'package:food_hub/reuseable_components/featured_resturant_item.dart';
import 'package:food_hub/reuseable_components/resturant_ratings_with_heart.dart';
import 'package:food_hub/utils/constant_colors.dart';
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.titleColorOfTextFormField.withOpacity(0.1),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                            Container(

                      margin: EdgeInsets.only(top: 25),

                      child: CustomBackbutton()),
                            SizedBox(height: 20.h,),
                        Customtextwidget(text: 'Fast',fontSize: 40.sp,fontWeight: FontWeight.bold,color: AppColors.headingText,),
                      Customtextwidget(text: 'Food',fontSize: 40.sp,fontWeight: FontWeight.bold,color: AppColors.buttonColor,),
                      SizedBox(height: 8.sp,),
                      Customtextwidget(text: '80 type of pizza',fontSize: 19.sp,color: AppColors.titleColorOfTextFormField,),

                      ],
                    ),
                  ),
                  Image.asset('assets/images/img.png',height: 300,width: 240,fit: BoxFit.cover,)
                ],
              ),
            ),
            SizedBox(height: 8.h,),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Customtextwidget(text: 'Short by:',fontSize: 14.sp,color: AppColors.blackColor,),
                        Customtextwidget(text: '  Popular',fontSize: 14.sp,color: AppColors.buttonColor,),
                        Icon(Icons.keyboard_arrow_down_outlined,size: 14.sp,color: AppColors.searchIconColor,),
                        Spacer(),
                        Container(child: Icon(Icons.tune_outlined,size:30,color: AppColors.buttonColor,))

                      ],
                    ),
              ),
              SizedBox(height: 12,),
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
              SizedBox(height: 20,),
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

                        FeaturedResturantItem(backGroundImage: 'assets/images/cateImg2.png',height: 165.h,width: 323.w,
                          text: '555',
                        ),
                        SizedBox(height: 12.sp,),
                        Customtextwidget(text: 'Chicken Cheese Special',fontSize: 18.sp,fontWeight: FontWeight.bold,color: AppColors.blackColor,),
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
            ],
          )
          ],
        ),
      )
    );

  }
}
// Container(
//   // margin: EdgeInsets.symmetric(horizontal: ),
//   decoration: BoxDecoration(
//
//     image: DecorationImage(image:AssetImage('assets/images/img.png',),alignment: Alignment.topRight,fit: BoxFit.contain)
//   ),
//   child: Container(
//     margin: EdgeInsets.symmetric(horizontal: 20),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // custom back button
//         Container(
//             margin: EdgeInsets.only(top: 25),
//             child: BackButton()),
//         SizedBox(height: 20.h,),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//           //   Title
//             Customtextwidget(text: 'Fast',fontSize: 40.sp,fontWeight: FontWeight.bold,color: AppColors.headingText,),
//             Customtextwidget(text: 'Food',fontSize: 40.sp,fontWeight: FontWeight.bold,color: AppColors.buttonColor,),
//             SizedBox(height: 8.sp,),
//             Customtextwidget(text: '80 type of pizza',fontSize: 19.sp,color: AppColors.titleColorOfTextFormField,),
//             SizedBox(height: 100.sp,),
//             // items
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Customtextwidget(text: 'Short by:',fontSize: 14.sp,color: AppColors.blackColor,),
//                 Customtextwidget(text: '  Popular',fontSize: 14.sp,color: AppColors.buttonColor,),
//                 Icon(Icons.keyboard_arrow_down_outlined,size: 14.sp,color: AppColors.searchIconColor,),
//                 Spacer(),
//                 Container(child: Icon(Icons.tune_outlined,size:30,color: AppColors.buttonColor,))
//
//               ],
//             )
//           ],
//         )
//       ],
//     ),
//   ),
// ),