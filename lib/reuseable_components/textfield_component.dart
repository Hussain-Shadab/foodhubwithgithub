import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/utils/constant_colors.dart';

class TextfieldComponent extends StatefulWidget {
  final String titleText;
  final String hinttext;
  final bool isPassword;


  const TextfieldComponent(
      {Key? key,
      required this.titleText,
      required this.hinttext,
      this.isPassword = false

      })
      : super(key: key);

  @override
  State<TextfieldComponent> createState() => _TextfieldComponentState();
}

class _TextfieldComponentState extends State<TextfieldComponent> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.titleText,
            style: TextStyle(
              color: AppColors.titleColorOfTextFormField,
              fontSize: 16.sp,
            ),
          ),
          SizedBox(
            height: 10.sp,
          ),
          SizedBox(
            height: 65.sp,
            width: 320.sp,
            child: TextFormField(
              obscureText: widget.isPassword ? isObscure : false,
              decoration: InputDecoration(
                  hintText: widget.hinttext,
                  hintStyle: TextStyle(color: AppColors.hintTextColor),
                  suffixIcon: widget.isPassword
                      ? IconButton(
                          icon: Icon(
                            isObscure
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            size: 22.sp,
                          ),
                          color: Colors.grey,
                          onPressed: () {
                            setState(() {
                              isObscure =! isObscure;
                            });
                          },
                        )
                      : null,
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 2.5.w, color: AppColors.enabledBorder),
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 0.9.w, color: AppColors.buttonColor),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
