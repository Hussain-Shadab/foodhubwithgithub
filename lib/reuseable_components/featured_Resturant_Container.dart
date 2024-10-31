import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/cheezious_items.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/reuseable_components/free_Delivery_with_Timing.dart';
import 'package:food_hub/reuseable_components/resturant_ratings_with_heart.dart';
import 'package:food_hub/utils/constant_colors.dart';

class FeaturedResturantContainer extends StatelessWidget {
  final String backgroundimage;
  final String text;
  const FeaturedResturantContainer({
    Key? key,
    required this.backgroundimage,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 229.h,
      width: 266.w,
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          boxShadow: [
            BoxShadow(
              spreadRadius: 5,
              blurRadius: 6,
              offset: Offset(5, 5),
              color: AppColors.titleColorOfTextFormField.withOpacity(0.1)
            )
          ],
          image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage(backgroundimage)),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40))),
      child: Column(
        children: [
          ResturantRatingsWithHeart(),
          SizedBox(
            height: 70.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 18, top: 15),
            child: Row(
              children: [
                Customtextwidget(
                  text: text,
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
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 18),
            child: Row(
              children: [
                FreeDeliveryWithTiming(image: 'assets/images/deliveryGuy.png'),
                Customtextwidget(
                  text: 'Free Delivery',
                  fontSize: 15,
                  color: AppColors.titleColorOfTextFormField,
                ),
                SizedBox(
                  width: 15.w,
                ),
                FreeDeliveryWithTiming(image: 'assets/images/deliveryGuy.png'),
                Customtextwidget(
                  text: '10-15 Minutes',
                  fontSize: 15,
                  color: AppColors.titleColorOfTextFormField,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              CheeziousItems(
                text: 'Burger',
              ),
              CheeziousItems(
                text: 'Chicken',
              ),
              CheeziousItems(
                text: 'Fast Food',
              ),
            ],
          ),
          // BottomNavigationBar(items: [
          //
          // ])
        ],
      ),
    );
  }
}
