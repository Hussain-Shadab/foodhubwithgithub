
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/utils/constant_colors.dart';
class CheeziousItems extends StatelessWidget {
  final String text;
  const CheeziousItems({
    
    Key?key,
    required this.text
});

  @override
  Widget build(BuildContext context) {
    return Container(

      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 18),
      decoration: BoxDecoration(
    color: AppColors.cheeziousItemsContainerColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Customtextwidget(text: text,fontSize: 15,
        color: AppColors.cheeziousItemsContainerColor.withOpacity(1),

        ),
      ),
    );

  }
}
