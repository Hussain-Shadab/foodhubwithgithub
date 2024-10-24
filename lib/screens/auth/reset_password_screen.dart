
import 'package:flutter/material.dart';
import 'package:food_hub/reuseable_components/custom_button.dart';
import 'package:food_hub/reuseable_components/textfield_component.dart';
import 'package:food_hub/utils/constant_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/custom_backButton.dart';
import 'package:food_hub/reuseable_components/custom_styled_container.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(child: CustomStyledContainer()),
                Positioned(top: 50.sp, left: 40.sp, child: CustomBackbutton())
              ],
            ),
            SizedBox(
              height: 60.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment:Alignment.topLeft,
                    child: Text(
                      'Reset Password',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.blackColor,
                          fontSize: 36),
                    ),
                  ),
                  Text(
                    'Please type the verification code sent to prelookstudio@gmail.com',
                    style: TextStyle(
                        color: AppColors.titleColorOfTextFormField,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 25.sp,
                  ),
TextfieldComponent(titleText: 'E-mail', hinttext: 'email'),
                  SizedBox(height: 30.h,),
                 CustomButton(buttonText: 'See New Password')

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
