import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/drawer/advance_drawer_component.dart';
import 'package:food_hub/screens/auth/login_screen.dart';
import 'package:food_hub/screens/auth/user_profile_screen.dart';
import 'package:food_hub/screens/cart_screen.dart';
import 'package:food_hub/screens/category_screen.dart';
import 'package:food_hub/screens/favorites_food_items_screen.dart';
import 'package:food_hub/screens/food_details_screen.dart';
import 'package:food_hub/screens/splash_screen.dart';
import 'package:food_hub/screens/upcomming_orders.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child){
        return MaterialApp(

            debugShowCheckedModeBanner: false,
            home: UserProfileScreen(),
        );
      },

    );
  }
}
