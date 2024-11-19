import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/custom_backButton.dart';
import 'package:food_hub/reuseable_components/custom_button.dart';
import 'package:food_hub/reuseable_components/custom_styled_container.dart';
import 'package:food_hub/screens/auth/login_screen.dart';
import 'package:food_hub/screens/auth/registration_screen.dart';
import 'package:food_hub/screens/auth/reset_password_screen.dart';
import 'package:food_hub/utils/constant_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationcodeScreen extends StatefulWidget {
  const VerificationcodeScreen({super.key});

  @override
  State<VerificationcodeScreen> createState() => _VerificationcodeScreenState();
}

class _VerificationcodeScreenState extends State<VerificationcodeScreen> {
  TextEditingController _pinController = TextEditingController();
  String userPin = '';
  // void validatePin(){
  //   if(_pinController.text == correctPin ){
  //     print('Pin is correct');
  //   }else{
  //     print('Pin is Incorrect');
  //   }
  // }
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
                      'Verification Code',
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
                  PinCodeTextField(
                    appContext: context,
                    length: 4,
                    obscureText: false,
                    controller: _pinController,
                    // obscuringCharacter: '#',
                    // obscuringWidget: const FlutterLogo(
                    //   size: 24,
                    // ),
                    blinkWhenObscuring: true,
                    onCompleted: (value){
userPin = value;
print('Pin by user $value');
},
                    pinTheme: PinTheme(shape: PinCodeFieldShape.box,
                    fieldHeight: 50,
                        fieldWidth: 50,
                      borderRadius: BorderRadius.circular(10),
                      activeFillColor: Colors.yellow,
                      activeColor: AppColors.enabledBorder,
                      selectedColor: AppColors.buttonColor,
                      inactiveColor:AppColors.enabledBorder,
activeBorderWidth: 1,
                      inactiveBorderWidth: 1,
                        selectedBorderWidth: 1.5

                    ),
                    keyboardType: TextInputType.number,
                    hintStyle: TextStyle(color: AppColors.buttonColor),
                    autoFocus: true,
                    cursorColor: AppColors.buttonColor,
                    textStyle: TextStyle(color: AppColors.buttonColor),
                    boxShadows: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: Colors.black,
                        blurRadius: 10
                      )
                    ],
                  ),
SizedBox(height: 15.h,),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                      },
                      child: CustomButton(buttonText: 'Verified')),
                  SizedBox(height: 10.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Dont have an account!',style: TextStyle(color: AppColors.accountTextColor,fontSize: 16.sp),),
                      TextButton(onPressed: (){}, child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationScreen()));
                          },
                          child: Text('Please resend',style: TextStyle(color: AppColors.buttonColor,fontSize: 16.sp),)))
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
