import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackbutton extends StatefulWidget {
  const CustomBackbutton({super.key});

  @override
  State<CustomBackbutton> createState() => _CustomBackbuttonState();
}

class _CustomBackbuttonState extends State<CustomBackbutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 30.w,
decoration: BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(5)
),

child: Icon(Icons.arrow_back_ios_sharp,color: Colors.black,),
    );
  }
}
