import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/custom_button.dart';
import 'package:food_hub/reuseable_components/custom_styled_container.dart';
import 'package:food_hub/reuseable_components/facebook_google_login.dart';
import 'package:food_hub/reuseable_components/textfield_component.dart';
import 'package:food_hub/utils/constant_colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomStyledContainer(),
            Container(
              margin: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 36),
                  ),
                  TextfieldComponent(
                    titleText: 'Full Name',
                    hinttext: 'Your Name',
                    isPassword: false,
                  ),
                  TextfieldComponent(
                      titleText: 'E-mail', hinttext: 'Your e-mail',isPassword: false,),
                  TextfieldComponent(
                    titleText: 'Password',
                    hinttext: 'Your password',
                    isPassword: true,
                  ),
        SizedBox(height: 20.h,),
        CustomButton(
          buttonText: 'Sign Up',
        ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(fontSize: 18,color: AppColors.accountTextColor),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(color: AppColors.buttonColor, fontSize: 18),
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          height: 1,
                          // indent: 30,
                          color: AppColors.dividerColor.withOpacity(0.5),
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'sign in with',
                            style: TextStyle(color: AppColors.accountTextColor,fontSize:16),
                          )),
                      Expanded(
                        child: Divider(
                          height: 1,
                          // endIndent: 10,
                          color: AppColors.dividerColor.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FacebookGoogleLogin(imagePath: 'assets/socialImages/facebook.png', buttonText: 'facebook'),
                      FacebookGoogleLogin(imagePath: 'assets/socialImages/google.png', buttonText: 'google'),

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
