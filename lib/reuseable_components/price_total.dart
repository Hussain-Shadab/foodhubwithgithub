import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/utils/constant_colors.dart';
class PriceTotal extends StatefulWidget {
  final String text;

  const PriceTotal({
    Key ?key,
    this.text ='text',
}) : super(key: key);

  @override
  State<PriceTotal> createState() => _PriceTotalState();
}

class _PriceTotalState extends State<PriceTotal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Customtextwidget(text: widget.text,fontSize: 20,color: AppColors.blackColor,),
            Spacer(),
            Customtextwidget(text: widget.text,fontSize: 22,color: AppColors.blackColor,fontWeight: FontWeight.w600,),
            Customtextwidget(text:  widget.text,fontSize: 20,color: AppColors.titleColorOfTextFormField),
          ],
        ),
        SizedBox(height: 5.sp,),
        Divider(
thickness: 0.1,
          height: 0.1,
        ),
        SizedBox(height: 20.sp,),
      ],
    );
  }
}
