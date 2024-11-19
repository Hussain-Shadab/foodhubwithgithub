import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/resturant_ratings_with_heart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/utils/constant_colors.dart';
class FeaturedResturantItem extends StatefulWidget {
  final String backGroundImage;
  final String? text;
  final double? height;
  final double? width;
  const FeaturedResturantItem({
    Key ? key,
    required this.backGroundImage,
     this.text,
    this.height,
    this.width,
}) : super(key: key);

  @override
  State<FeaturedResturantItem> createState() => _FeaturedResturantItemState();
}

class _FeaturedResturantItemState extends State<FeaturedResturantItem> {
  bool isFavourite =false;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.height??100.h,
        width: widget.width??165.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              alignment: Alignment.topCenter,
             image: AssetImage(widget.backGroundImage,),
              fit: BoxFit.cover
          ),


        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 28.h,
              width: 69.w,
              margin: EdgeInsets.only(top:16,left: 10.sp),
              decoration: BoxDecoration(

                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(25)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Customtextwidget(text: widget.text??'text',color: AppColors.buttonColor,fontSize: 20,),
                  // Customtextwidget(text: widget.text,
                  //   fontWeight: FontWeight.bold,
                  //   fontSize: 20.sp,
                  // ),
                  // SizedBox(width: 3.sp,),


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
        )
    );;
  }
}

