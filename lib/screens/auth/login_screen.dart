import 'package:flutter/material.dart';
import 'package:food_hub/reuseable_components/custom_backButton.dart';
import 'package:food_hub/reuseable_components/custom_styled_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/custom_button.dart';
import 'package:food_hub/reuseable_components/facebook_google_login.dart';
import 'package:food_hub/reuseable_components/textfield_component.dart';
import 'package:food_hub/utils/constant_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(child: CustomStyledContainer()),
                Positioned(
                    top: 50,
                    left:40 ,
                    child: CustomBackbutton()),
              ],
            ),
            SizedBox(height: 60.h,),
            Container(
              margin: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 36),
                  ),

                  TextfieldComponent(
                    titleText: 'E-mail',
                    hinttext: 'Your e-mail',
                    isPassword: false,
                  ),
                  TextfieldComponent(
                    titleText: 'Password',
                    hinttext: 'Your password',
                    isPassword: true,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                    buttonText: 'Sign Up',
                  ),
                  SizedBox(height: 10.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                            fontSize: 18, color: AppColors.accountTextColor),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: AppColors.buttonColor, fontSize: 18),
                          ))
                    ],
                  ),
                  SizedBox(height: 15.h,),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          height: 1,
                          // indent: 30,
                          color: AppColors.dividerColor,
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'sign in with',
                            style: TextStyle(
                                color: AppColors.accountTextColor,
                                fontSize: 16),
                          )),
                      Expanded(
                        child: Divider(
                          height: 1,
                          // endIndent: 10,
                          color: AppColors.dividerColor.withOpacity(1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FacebookGoogleLogin(
                          imagePath: 'assets/socialImages/facebook.png',
                          buttonText: 'facebook'),
                      FacebookGoogleLogin(
                          imagePath: 'assets/socialImages/google.png',
                          buttonText: 'google'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
