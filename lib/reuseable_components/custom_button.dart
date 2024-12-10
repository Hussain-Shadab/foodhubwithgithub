import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/utils/constant_colors.dart';

class CustomButton extends StatefulWidget {
  final String buttonText;
  final Color? backGroundColor;
  final Color textColor;
  const CustomButton(
      {Key? key,
      required this.buttonText,
      this.backGroundColor = AppColors.buttonColor,
      this.textColor = Colors.transparent})
      : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 60.h,
        width: 248.w,
        decoration: BoxDecoration(
            color: widget.backGroundColor,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3))
            ]),
        child: Center(
          child: Text(
            widget.buttonText,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: widget.textColor),
          ),
        ),
      ),
    );
  }
}
