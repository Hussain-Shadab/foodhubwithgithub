import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/list_tile_component.dart';
import 'package:food_hub/utils/constant_colors.dart';
import 'package:food_hub/screens/home_screen.dart';
class AdvanceDrawerComponent extends StatefulWidget {
  const AdvanceDrawerComponent({super.key});

  @override
  State<AdvanceDrawerComponent> createState() => _AdvanceDrawerComponentState();
}

class _AdvanceDrawerComponentState extends State<AdvanceDrawerComponent> {
  final _advanceDrawerController = AdvancedDrawerController();
  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      controller: _advanceDrawerController,
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [AppColors.whiteColor, AppColors.blackColor])),
      ),
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 800),
      animateChildDecoration: true,
      // disabledGestures: false,
      childDecoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: Scaffold(
        appBar: AppBar(
// titleSpacing: 50.0,
toolbarHeight: 65,
          centerTitle: true,

          leading: IconButton(
            onPressed: () {
              _advanceDrawerController.showDrawer();
            },
            icon: Icon(
              Icons.menu_outlined,
            ),
          ),
          title: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Delivery to',
                    style: TextStyle(
                        color: AppColors.titleColorOfTextFormField,
                        fontSize: 15),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                      ))
                ],
              ),
              Text(
                '4102 Pretty View Lane',
                style: TextStyle(color: AppColors.buttonColor, fontSize: 18),
              )
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Container(
                height: 40.h,
                width: 40.w,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  'assets/images/profileImage.png',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
        body: Container(
          
        ),
      ),
      drawer: HomeScreen()
    );
  }
}
