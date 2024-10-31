import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/utils/constant_colors.dart';
class CustomNavigationBar extends StatelessWidget {
  final IconData icon;
  const CustomNavigationBar({
    Key?key,
    required this.icon
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ Positioned(
        child: Container(
          height: 30.h,
          width: 65.w,
          child: Icon(icon,size: 30,color: AppColors.buttonColor,),
        ),
      ),
    ]
    );
  }
}
