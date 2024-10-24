import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FacebookGoogleLogin extends StatelessWidget {
  final String imagePath;
  final String buttonText;

  const FacebookGoogleLogin({
    super.key,
    required this.imagePath,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print('pressed');
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 54.h,
        width: 135.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset(
              imagePath,
              height: 30.h,
              width: 29.w,
            ),
            SizedBox(
              width: 8.w,
            ),
            Text(
              buttonText,
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
