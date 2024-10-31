import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/list_tile_component.dart';
import 'package:food_hub/utils/constant_colors.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    height: 210.h,
                    child: Column(
                      children: [
                        Container(
                          height: 150.h,
                          width: 150.w,
                          child: Image.asset(
                            'assets/images/profileImage.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'Jazzy Boy',
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'jazzy@gmail.com',
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.hintTextColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    )),
                ListTileComponent(
                    icons: Icons.my_library_books_outlined, titleText: 'My Orders'),
                ListTileComponent(icons: Icons.person, titleText: 'My Profile'),
                ListTileComponent(
                    icons: Icons.location_on, titleText: 'Delivery Address'),
                ListTileComponent(
                    icons: Icons.payment_outlined, titleText: 'Payment Methods'),
                ListTileComponent(icons: Icons.contact_mail, titleText: 'Contact US'),
                ListTileComponent(icons: Icons.settings, titleText: 'Settings'),
                ListTileComponent(
                    icons: Icons.question_mark, titleText: 'Helps & Faqs'),
              ],
            ));

  }
}
