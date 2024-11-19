


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/utils/constant_colors.dart';

class AddOnItem extends StatefulWidget {
  final String image;
  final String text;

  const AddOnItem({
    Key?key,
    this.image='',
    this.text=''
}):super(key: key);

  @override
  State<AddOnItem> createState() => _AddOnItemState();
}

class _AddOnItemState extends State<AddOnItem> {
  bool isSelected =false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
Row(
  children: [
    Container(
      height: 39.h,
      width: 39.w,
decoration: BoxDecoration(
  shape: BoxShape.circle
),
      child: Image.asset(widget.image,fit: BoxFit.cover,),
    ),
    SizedBox(width: 15.sp,),
    Customtextwidget(text:widget.text,fontSize: 18,fontWeight: FontWeight.w600,color: AppColors.blackColor,),
  ],
),
        Row(
          children: [
            Customtextwidget(text: widget.text,fontSize: 12,fontWeight: FontWeight.w600),
            SizedBox(width: 5.w,),
            GestureDetector(
              onTap: (){
                setState(() {
                  isSelected = !isSelected;
                });
              },
              child: Container(
              height: 29.h,
                width: 29.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.titleColorOfTextFormField,
                  )
                ),
                child: isSelected
                ? Container(
decoration: BoxDecoration(
  shape: BoxShape.circle,

  border: Border.all(color: AppColors.buttonColor,width: 2),

),
                  child: Center(
                    child: Container(
                      height: 14.5.h,
                      width: 14.5.w,
                      decoration: BoxDecoration(
                        color: AppColors.buttonColor,
shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.buttonColor,
                            spreadRadius: 2,
                            offset: Offset(0, 1),
                            blurRadius: 0.1
                          )
                        ]
                      ),

                    ),
                  ),
                ) : null,
              ),
            )
          ],
        )
      ],
    );
  }
}
