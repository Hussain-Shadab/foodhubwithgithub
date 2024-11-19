import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/add_on_item.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/reuseable_components/custom_backButton.dart';
import 'package:food_hub/reuseable_components/price_counter_widget.dart';
import 'package:food_hub/utils/constant_colors.dart';

class FoodDetailsScreen extends StatefulWidget {
  const FoodDetailsScreen({super.key});

  @override
  State<FoodDetailsScreen> createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  bool isFavourite=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15.sp,
            ),
            Container(
              height: 206.h,
              width: 323.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10
                    // bottomLeft: Radius.circular(10)
                  ),
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/cheezious.png',
                      ),
                      fit: BoxFit.cover)),
              child: Container(
alignment: Alignment.topCenter,
                margin: EdgeInsets.only(left: 20,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomBackbutton(),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          isFavourite = !isFavourite;
                        });
                      },
                      child: Container(

                        height: 28.h,
                        width: 32.w,
                        margin: EdgeInsets.only(top: 16,right: 18),
                        decoration: BoxDecoration(
                          color: isFavourite ? AppColors.whiteColor.withOpacity(0.5) : AppColors.buttonColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            topLeft: Radius.circular(100),
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                          ),


                        ),
                        child: Icon(Icons.favorite,color:isFavourite ? AppColors.buttonColor :AppColors.whiteColor,),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            Customtextwidget(text: 'Ground Beef Tacos',
            fontSize: 28.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.headingText,
            ),
            SizedBox(height: 10.sp,),
            Row(
              children: [
                Icon(Icons.star_border_outlined,color: AppColors.ratingStarColor,size: 30,),
                SizedBox(width: 3.sp,),
                Customtextwidget(text: '4.5',color: AppColors.blackColor,fontWeight: FontWeight.w600,fontSize: 18,),
                SizedBox(width: 3.sp,),

                Customtextwidget(text: '(35+)',color: AppColors.headingText,fontSize: 18,),
                SizedBox(width: 3.sp,),
Text('See Review',style: TextStyle(decoration: TextDecoration.underline,decorationColor: AppColors.buttonColor,decorationStyle:TextDecorationStyle.solid,fontSize: 18,color: AppColors.buttonColor,),)
              ],
            ),
            SizedBox(height: 10.h,),
            // Counter Widget
            PriceCounterWidget(),
            SizedBox(height: 15.sp,),
            // text widget
            Customtextwidget(text: 'Brown the beef better. Lean ground beef – I like to use 85% lean angus. Garlic – use fresh  chopped. Spices – chili powder, cumin, onion powder.',color: AppColors.hintTextColor,fontSize: 25,),
            SizedBox(height: 10.h,),
            // text widget

            Customtextwidget(text: 'Choice of Add On',fontSize: 25,fontWeight: FontWeight.w600,color: AppColors.headingText,),
            SizedBox(height: 10.h,),
AddOnItem(image: 'assets/images/peperItem.png',

text: 'Pepper  Julienned',),
AddOnItem(image: 'assets/images/b.png',

text: 'Baby Spinch',),
AddOnItem(image: 'assets/images/mas.png',

text: 'Masroom',),
          ],
        ),
      ),
    );
  }
}

