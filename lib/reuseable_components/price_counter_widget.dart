
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/utils/constant_colors.dart';

class PriceCounterWidget extends StatefulWidget {
  // final String text ;
  const PriceCounterWidget({
    Key ? key,
    // this.text,
}) :super(key: key);

  @override
  State<PriceCounterWidget> createState() => _PriceCounterWidgetState();
}

class _PriceCounterWidgetState extends State<PriceCounterWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,


      children: [
        Customtextwidget(text: '\$',fontWeight: FontWeight.w600,color: AppColors.buttonColor,fontSize: 35,),
        Row(

          children: [
          GestureDetector(
            onTap: (){},
            child: Container(
              height: 33.h,
              width: 33.w,

              decoration: BoxDecoration(
                shape: BoxShape.circle,

                border: Border.all(color: AppColors.buttonColor,style: BorderStyle.solid,width: 2),
              ),
            child: Icon(Icons.remove,color: AppColors.buttonColor,size: 16,),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10),
          child: Customtextwidget(text: 'text',fontSize: 18,fontWeight: FontWeight.w600,color: AppColors.hintTextColor,),
          ),
          GestureDetector(
            onTap: (){},
            child: Container(
              height: 33.h,
              width: 33.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.buttonColor,
              ),
              child: Icon(Icons.add,color: AppColors.whiteColor,size: 16,),
            ),
          )
        ],)
      ],
    );
  }
}
