import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_hub/reuseable_components/constant/customTextWidget.dart';
import 'package:food_hub/reuseable_components/featured_Resturant_Container.dart';
import 'package:food_hub/reuseable_components/featured_resturant_item.dart';
import 'package:badges/badges.dart' as badges;

import 'package:food_hub/reuseable_components/tab_buttons.dart';
import 'package:food_hub/screens/category_screen.dart';
import 'package:food_hub/screens/food_details_screen.dart';
import 'package:food_hub/utils/constant_colors.dart';
import 'package:food_hub/screens/home_screen.dart';
class AdvanceDrawerComponent extends StatefulWidget {
  const AdvanceDrawerComponent({super.key});

  @override
  State<AdvanceDrawerComponent> createState() => _AdvanceDrawerComponentState();
}

class _AdvanceDrawerComponentState extends State<AdvanceDrawerComponent> {
  bool isSelected =false;
  int selectedIndex = 0;
  final List<Map<String, String>> tabDetail = [
    {'imagePath': 'assets/orderImages/burger.png', 'imageTitle': 'Burger'},
    {'imagePath': 'assets/orderImages/donat.png', 'imageTitle': 'Donat'},
    {'imagePath': 'assets/orderImages/pizza.png', 'imageTitle': 'Pizza'},
    {'imagePath': 'assets/orderImages/mexican.png', 'imageTitle': 'Mexican'},
    {'imagePath': 'assets/orderImages/asian.png', 'imageTitle': 'Asian'},
  ];
  final _advanceDrawerController = AdvancedDrawerController();
  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
        controller: _advanceDrawerController,
        backdrop: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: AppColors.whiteColor
              // gradient: LinearGradient(
              //     begin: Alignment.topLeft,
              //     end: Alignment.bottomRight,
              //     colors: [AppColors.whiteColor, AppColors.blackColor])
              ),
        ),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 800),
        animateChildDecoration: true,
        // disabledGestures: false,
        childDecoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: Scaffold(
          backgroundColor: AppColors.whiteColor,

          appBar: AppBar(
            backgroundColor: AppColors.whiteColor,
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
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'What would you like\n to order',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: AppColors.headingText),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.search,
                                    size: 24,
                                    color: AppColors.searchIconColor,
                                  ),
                                  hintText: 'Find for food or resturant...',
                                  hintStyle: TextStyle(
                                      color: AppColors.searchHintText,
                                      fontSize: 14.sp),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: AppColors.searchBarBorder),
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          height: 38.h,
                          width: 51.w,
                          decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.tune,
                            color: AppColors.buttonColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(tabDetail.length, (index) {
                        return TabButtons(
                            imagePath: tabDetail[index]['imagePath']!,
                            imageTitle: tabDetail[index]['imageTitle']!,
                            isSelected: selectedIndex == index,
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                                if(selectedIndex == 2){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryScreen()));
                                }
                              });
                            });
                      })),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Customtextwidget(
                        text: ' Featured Resturants',
                        color: AppColors.headingText,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      Spacer(),
                      Customtextwidget(
                        text: 'SeeAll',
                        color: AppColors.buttonColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FoodDetailsScreen()));
                      },
                      child: Row(
                        children: [
                          FeaturedResturantContainer(
                            backgroundimage: 'assets/images/cheezious.png',
                            text: 'Cheezy and Crispy',
                          ),
                          SizedBox(
                            width: 10.sp,
                          ),
                          FeaturedResturantContainer(
                            backgroundimage: 'assets/images/cheezious.png',
                            text: 'Cheezious',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Customtextwidget(
                    text: 'Featured Items',
                    color: AppColors.headingText,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal
                    ,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FoodDetailsScreen()));
                      },
                      child: Row(
                        children: [
                          FeaturedResturantItem(
                              backGroundImage: 'assets/images/cheezious.png',
                          text: '\$ 6',
                          ),

                          SizedBox(width: 10.sp,),
                          FeaturedResturantItem(
                              backGroundImage: 'assets/images/cheezious.png',
                          text: '\$ 7.5',
                          ),
                          SizedBox(width: 10.sp,),
                          FeaturedResturantItem(backGroundImage: 'assets/images/cheezious.png',
                          text: '\$ 3',
                          )
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(height: 80.sp,),
                  // const Row(
                  //   children: [
                  //     CustomNavigationBar(icon: Icons.assistant_navigation),
                  //     CustomNavigationBar(icon: Icons.location_on),
                  //     CustomNavigationBar(icon: Icons.shopping_bag),
                  //     CustomNavigationBar(icon: Icons.favorite),
                  //     CustomNavigationBar(icon: Icons.notifications),
                  //   ],
                  // )
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
selectedItemColor: AppColors.buttonColor,
              unselectedItemColor: AppColors.blackColor,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: (val){
  setState(() {
    selectedIndex = val;
  });
              },
              iconSize: 40, items: [

            BottomNavigationBarItem(
                icon: Icon(
                  Icons.assistant_navigation,
                  color: AppColors.buttonColor,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_on,
                  color: AppColors.buttonColor,
                ),
                label: ''),

            BottomNavigationBarItem(
                label: '',
                icon: badges.Badge(
              position: badges.BadgePosition.topEnd(top: -7,end: -8),
              badgeStyle: badges.BadgeStyle(
                badgeColor: AppColors.ratingStarColor,
                padding: EdgeInsets.all(10)
              ),
              showBadge: true,
              badgeContent: Customtextwidget(text: '',
              color: AppColors.whiteColor,

                // fontSize: 15,

              ),
              child: Icon(Icons.shopping_bag,),
            )),

            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: AppColors.buttonColor,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  color: AppColors.buttonColor,
                ),
                label: ''),
          ]),
        ),
        drawer: HomeScreen());
  }
//   Widget _bnb(){
//     return BottomNavigationBar(items: [
// BottomNavigationBarItem(icon: Icon(Icons.add))
//     ]);
//   }
}
