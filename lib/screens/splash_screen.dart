import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/screens/auth/welcome_screen.dart';
import 'package:food_hub/utils/constant_colors.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
  //   Setting duration
    Future.delayed(Duration(seconds: 3),(){

      Navigator.push(context,MaterialPageRoute(builder: (context)=>WelcomeScreen()));
    });
  }

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
