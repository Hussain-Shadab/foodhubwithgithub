import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/facebook_google_login.dart';
import 'package:food_hub/utils/constant_colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColorOfWelcomeScreen,
        body: Stack(
          children: [

             Positioned(
                  child: Opacity(opacity: 0.3,
                  child: Image.asset(
                    'assets/images/wellcome.png',
                    fit: BoxFit.fill,
                    width: 500.w,
                  ),
                  )
             ),

            Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 55,
                    height: 32,
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(27)),
                    child: Text(
                      'skip',
                      style: TextStyle(color: AppColors.buttonColor),
                    ),
                  ),
                )),
            // SizedBox(
            //   height: 20.h,
            // ),
            Container(
              margin: EdgeInsets.only(left: 30.sp,right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 110.h,),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: 'WellCome to\n',
                        style: TextStyle(
                          fontSize: 40.sp,
                          fontWeight: FontWeight.bold,
                        )),
                    TextSpan(
                        text: 'FoodHub\n',
                        style: TextStyle(
                            fontSize: 40.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.buttonColor)),
                    TextSpan(
                        text:
                            'Your favourite foods delivered\nfast at yours door.',
                        style: TextStyle(
                            color: AppColors.bgColorOfWelcomeScreen,
                            fontSize: 18))
                  ])),
                  SizedBox(
                    height: 190.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          height: 1,
                          indent: 25,
                          endIndent: 12,
                          color: AppColors.dividerColor,
                        ),
                      ),
                      Text(

                            'sign in with',
                            style: TextStyle(color:Colors.white,fontSize:16),
                          ),
                      Expanded(
                        child: Divider(
                          height: 1,
                          indent: 12,
                          endIndent: 25,
                          color: AppColors.dividerColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FacebookGoogleLogin(
                        imagePath: 'assets/socialImages/facebook.png',
                        buttonText: 'FaceBook',
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      FacebookGoogleLogin(
                        imagePath: 'assets/socialImages/google.png',
                        buttonText: 'Google',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 54.h,
                      width: 315.w,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                          border: Border.all(width: 2, color: Colors.grey)),
                      child: Center(
                          child: Text(
                        'Start with Email or Phone',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(fontSize: 18.sp,color: AppColors.whiteColor),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'SignIn',
                            style: TextStyle(color:AppColors.whiteColor, fontSize: 18.sp),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
