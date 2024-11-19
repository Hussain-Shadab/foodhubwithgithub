
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/cart_items.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/reuseable_components/custom_backButton.dart';
import 'package:food_hub/reuseable_components/custom_button.dart';
import 'package:food_hub/reuseable_components/price_total.dart';
import 'package:food_hub/utils/constant_colors.dart';
class CartScreen extends StatelessWidget {
  final String hintText;
  final String buttonText;
  final Color? bgColor;
  final TextEditingController? controller;
  final VoidCallback? onApply;

  const CartScreen({
    Key ? key,
    this.hintText ='Promo Code',
    this.buttonText = 'Apply',
    this.bgColor = AppColors.buttonColor,
    this.controller,
    this.onApply
}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20,right: 20,top: 15),

        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: cZZZZ?,
              children: [
                CustomBackbutton(),
                Spacer(),
                Customtextwidget(text: 'Cart',fontSize: 18.sp,fontWeight: FontWeight.bold
                  ,color: AppColors.headingText,),
            Spacer(),
              ],
            ),
            SizedBox(height: 25.sp,),
            CartItems(
              image: 'assets/images/cateImg2.png',
            ),
            SizedBox(height:15.h),
            CartItems(
              image: 'assets/images/cateImg2.png',
            ),
            SizedBox(height: 25.h,),
            Padding(padding: EdgeInsets.all(0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(child: TextField(

                  controller: controller,
                  decoration: InputDecoration(

                    hintText: hintText,
                    hintStyle: TextStyle(
color: AppColors.hintTextColor
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.sp),
                      borderSide: BorderSide(color: AppColors.enabledBorder),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.sp),
                      borderSide: BorderSide(color: AppColors.buttonColor),
                    ),
                    // contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: ElevatedButton(
                        onPressed: onApply,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(AppColors.buttonColor),
                          padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 30)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                        child: Text(buttonText,style: TextStyle(color: AppColors.whiteColor),),
                      ),
                    ),

                  ),

                ),
                ),

              ]
            ),
            ),
            SizedBox(height: 20.sp,),
            PriceTotal(text: 'subtotal',

            ),
            PriceTotal(text: 'Tax and Fees',

            ),
            PriceTotal(text: 'Delvery',

            ),
            PriceTotal(text: 'Total',

            ),
            SizedBox(height: 100.sp,),
            CustomButton(buttonText: 'CheckOut'),



          ],
        ),
      ),
    );
  }
}
