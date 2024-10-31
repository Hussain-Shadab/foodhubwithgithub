import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/utils/constant_colors.dart';

class FreeDeliveryWithTiming extends StatelessWidget {
final String image;
  const FreeDeliveryWithTiming({
  Key?key,
    required this.image

}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
Image.asset(image,height: 20.h,width: 23.w,

),
        SizedBox(width: 5.w,),

      ],
    );
  }
}
