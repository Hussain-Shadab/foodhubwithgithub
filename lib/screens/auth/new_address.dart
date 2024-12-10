
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/reuseable_components/custom_backButton.dart';
import 'package:food_hub/reuseable_components/custom_button.dart';
import 'package:food_hub/reuseable_components/textfield_component.dart';
import 'package:food_hub/utils/constant_colors.dart';

class NewAddress extends StatefulWidget {
  const NewAddress({super.key});

  @override
  State<NewAddress> createState() => _NewAddressState();
}

class _NewAddressState extends State<NewAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBackbutton(),
                Spacer(),
                Customtextwidget(text: 'Add new address',fontSize: 18.sp,color: AppColors.blackColor,fontWeight: FontWeight.w600,),
                Spacer()

              ],
            ),
            SizedBox(height: 15.sp,),
            TextfieldComponent(titleText: 'Full Name', hinttext: 'Full Name'),
            TextfieldComponent(titleText: 'Mobile Number', hinttext: 'Mobile Mumber'),
            Text(
              'State',
              style: TextStyle(
                color: AppColors.titleColorOfTextFormField,
                fontSize: 16.sp,
              ),
            ),
            SizedBox(height: 10.sp,),
            SizedBox(
              height: 65.h,
              width: double.infinity,
              child: DropdownButtonFormField<String>(
                elevation: 5,
                decoration: InputDecoration(
                  hintText: 'Select State',
                  hintStyle: TextStyle(color: AppColors.blackColor),
                  enabledBorder: OutlineInputBorder(
                    borderSide:BorderSide(
                      width: 2.5.w,color: AppColors.enabledBorder,
                      
                    ),
                    borderRadius: BorderRadius.circular(10.sp)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.5.w,
                      color: AppColors.buttonColor
                    ),
                    borderRadius: BorderRadius.circular(10.sp)
                  ),
                    // suffixIcon: Icon(Icons.arrow_forward_ios,size: 22.sp,color: AppColors.blackColor,)
                ),
                value: null,
                items: <String>[
                  'Qudus',
                  'Damishk',
                  'Kahire',


                ].map<DropdownMenuItem<String>>((String value){
                  return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value));
                }).toList(),
                onChanged: (String? newValue){
                  print('SelectedState : $newValue');
                },

              ),
            ),
            Text(
              'City',
              style: TextStyle(
                color: AppColors.titleColorOfTextFormField,
                fontSize: 16.sp,
              ),
            ),
            SizedBox(height: 10.sp,),
            SizedBox(
              height: 65.h,
              width: double.infinity,
              child: DropdownButtonFormField<String>(
                elevation: 5,
                decoration: InputDecoration(
                  hintText: 'Select City',
                  hintStyle: TextStyle(color: AppColors.blackColor),
                  enabledBorder: OutlineInputBorder(
                      borderSide:BorderSide(
                        width: 2.5.w,color: AppColors.enabledBorder,

                      ),
                      borderRadius: BorderRadius.circular(10.sp)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2.5.w,
                          color: AppColors.buttonColor
                      ),
                      borderRadius: BorderRadius.circular(10.sp)
                  ),

                  // suffixIcon: Icon(Icons.arrow_forward_ios,size: 22.sp,color: AppColors.blackColor,)
                ),

                value: null,
                items: <String>[
                  'Constantiniopal',
                  'Boursa',
                  'Kahire',


                ].map<DropdownMenuItem<String>>((String value){
                  return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value));
                }).toList(),
                onChanged: (String? newValue){
                  print('SelectedState : $newValue');
                },

              ),
            ),

            TextfieldComponent(titleText: 'Street(include house number)', hinttext: 'Street'),
            SizedBox(height: 50.h,),
            CustomButton(buttonText: 'Save',textColor: AppColors.whiteColor,)

          ],
        ),
      ),
    );
  }
}
