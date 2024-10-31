import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/utils/constant_colors.dart';
class ResturantRatingsWithHeart extends StatefulWidget {

  const ResturantRatingsWithHeart({

    super.key});

  @override
  State<ResturantRatingsWithHeart> createState() => _ResturantRatingsWithHeartState();
}

class _ResturantRatingsWithHeartState extends State<ResturantRatingsWithHeart> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Container(
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
        ),
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
        )
      ],
    );
  }
}
