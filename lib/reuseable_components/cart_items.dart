import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/reuseable_components/price_counter_widget.dart';
import 'package:food_hub/utils/constant_colors.dart';

class CartItems extends StatelessWidget {
  final String image;
  const CartItems({
    Key? key,
    this.image = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image with rounded corners
        ClipRRect(
          borderRadius: BorderRadius.circular(10), // Adjusted to match the rounded corners
          child: Image.asset(
            image,
            height: 82.h,
            width: 82.w,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10.w),

        // Column for title, subtitle, and price with quantity counter at the end
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // First Row: Title and Close Icon on the far right
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Customtextwidget(
                    text: 'Red n Hot Pizza',
                    fontSize: 16.sp, // Adjusted font size
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                  ),
                  Icon(
                    Icons.close,
                    color: Colors.redAccent, // Adjust color to match the close icon style
                    size: 18.sp,
                  ),
                ],
              ),
              // Subtitle text
              Customtextwidget(
                text: 'Spicy chicken, beef',
                fontSize: 12.sp,
                color: AppColors.titleColorOfTextFormField,
              ),
              SizedBox(height: 5.h),

              // Row for Price and Quantity Counter
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Price Text
                  Customtextwidget(
                    text: '\$15.30',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.buttonColor, // Use the color from your theme or a red color
                  ),
                  // Quantity Counter Widget
                  PriceCounterWidget(), // Assuming this widget handles the quantity display and +/- buttons
                ],
              ),
            ],
          ),
        ),
      ],
    );

  }
}
