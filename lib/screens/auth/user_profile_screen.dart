
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/utils/constant_colors.dart';
class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(

            children: [
              Container(
                width: double.infinity,
                height: 200.h,
                decoration: BoxDecoration(

                    image: DecorationImage(
                      alignment: Alignment.topCenter,
                      fit: BoxFit.cover,

                      image: AssetImage('assets/images/bgProScr.png',),)
                ),


              ),
              Positioned(
                  top: 30.sp,
                  left: 20.sp,
                  child: BackButton()),
              Positioned(
                top: 110.sp,
                  left: 130.sp,
                  child: Container(
                height: 100.h,
                width: 100.w,

                padding: EdgeInsets.only(left:6.sp,top: 6),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.whiteColor,
// border: Border.all(color: Colors.red,width: 2)
//                   image: DecorationImage(
//                       alignment: Alignment.center,
// fit: BoxFit.cover,
//                       image: AssetImage('assets/images/profileImage.png',))
                ),
                    child: Center(
                      child: Container(
                        // color: Colors.red,

                        child: Image.asset('assets/images/profileImage.png',
                          // fit: BoxFit.contain,
                          // height: 90.sp,
                          // width: 90.sp,
                        ),
                      ),
                    ),
              )),
              Positioned(
                  top: 175.sp,
                  left: 185.sp,
                  child: Container(
                // height: 40.h,
                // width: 40.w,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  shape: BoxShape.circle
                ),
                child: Icon(Icons.camera_alt_outlined,color: AppColors.searchIconColor,),
              ))
            ]
          ),
          SizedBox(height: 2.sp,),
          Customtextwidget(text: 'Jazzy Boy',color: AppColors.headingText,
          fontSize: 18.sp,fontWeight: FontWeight.w600,
          ),
          Customtextwidget(text: 'Edit Profile',color: AppColors.titleColorOfTextFormField,
          fontSize: 15.sp,fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}

