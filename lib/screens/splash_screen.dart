import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/utils/constant_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: AppColors.buttonColor,
      body: Center(
        child: Image.asset('assets/images/splashscreen.png',height: 163.h,width: 182.w,),
      ),
    );
  }
}

