import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:food_hub/reuseable_components/custom_button.dart';
import 'package:food_hub/screens/auth/verificationCode_screen.dart';
import 'package:food_hub/utils/constant_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/custom_backButton.dart';
import 'package:food_hub/reuseable_components/custom_styled_container.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String? phoneNumber; // To store the phone number
  String selectedCountryCode = '+92'; // Default country code (Pakistan)

  // This GlobalKey allows us to open the CountryCodePicker programmatically
  GlobalKey<CountryCodePickerState> _countryPickerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.whiteColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Positioned(child: CustomStyledContainer()),
                  Positioned(top: 50.sp, left: 40.sp, child: CustomBackbutton())
                ],
              ),
              SizedBox(height: 60.h),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Registration',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColors.blackColor,
                            fontSize: 36.sp),
                      ),
                    ),
                    Text(
                      'Enter your phone number to verify your account',
                      style: TextStyle(
                          color: AppColors.titleColorOfTextFormField,
                          fontSize: 14),
                    ),
                    SizedBox(height: 25.sp),

                    // CountryCodePicker with Dropdown Icon and Phone Number Field
                    Container(
                      height: 65.h,
                      width: 320.w,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white, // Background color to match the design
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColors.buttonColor, width: 2),
                      ),
                      child: Row(
                        children: [
                          // GestureDetector to trigger CountryCodePicker when icon or picker is tapped
                          GestureDetector(
                            onTap: () {
                              // This opens the CountryCodePicker when the icon or flag is tapped
                              _countryPickerKey.currentState?.showCountryCodePickerDialog();
                            },
                            child: Row(
                              children: [
                                CountryCodePicker(
                                  key: _countryPickerKey,
                                  onChanged: (country) {
                                    setState(() {
                                      selectedCountryCode = country.dialCode!;
                                    });
                                  },
                                  initialSelection: 'PK',
                                  favorite: ['+92', 'PK'],
                                  showCountryOnly: false,
                                  showOnlyCountryWhenClosed: false,
                                  alignLeft: false,
                                  padding: EdgeInsets.zero,
                                  textStyle: TextStyle(
                                    fontSize: 16.sp,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                                // Add dropdown icon
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: AppColors.blackColor,
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: 10),

                          // Phone number input field
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter phone number',
                                hintStyle: TextStyle(
                                  fontSize: 16.sp,
                                  color: AppColors.titleColorOfTextFormField,
                                ),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  phoneNumber = value;

                                });
                              },
                            ),
                          ),

                        ],
                      ),

                    ),
                    Text('Phone Number $phoneNumber'),

                    SizedBox(height: 30.h),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>VerificationcodeScreen()));
                        },
                        child: CustomButton(buttonText: 'Check Verification Code')),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
